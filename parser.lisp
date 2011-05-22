(in-package #:parser)

(export '(defgrammar
          if-let*))

(defun name-to-fun (name)
  (symb 'parse- name))

(defun token-to-fun (token)
  `(,(name-to-fun token) ()
     (dprint ,(mkstr "Looking for " token))
     (if (and (next-token)
              (eql (token-type current-token) ',token))
         (token-value current-token))))

(defun composite-to-fun (composite)
  `(,(name-to-fun (car composite)) ()
     (dprint ,(mkstr "Looking for " (car composite)))
     (let ((start next-token))
       (or ,@(alternate
              (mapcar #'sequence-to-matcher (cdr composite))
              (mapcar #1`(backtrack-to start) (cdr composite)))))))

(defmacro if-let* (bindings &body body)
  (if bindings
      `(let (,(car bindings))
         (if ,(caar bindings)
             (if-let* ,(cdr bindings) ,@body)))
      `(progn ,@body)))

(defun make-token-p (to)
  (and (consp to)
       (eq (car to) 'make-token)))

(defparameter *debug-stream* *standard-output*)

(defmacro dprint (str &rest args)
  (declare (ignorable str args))
  #|`(format *debug-stream* ,(mkstr "~&" str) ,@args)|#)

(defun sequence-to-matcher (types)
  (with-gensyms!
    (cond ((null types) t)
          ((symbolp (car types))
           `(if-let* ((,g!result (,(symb 'parse- (car types))))
                      ,@(if (cdr types)
                            `((,g!rest ,(sequence-to-matcher (cdr types))))))
              (dprint ,(mkstr  "Found " (car types)))
              ,(if (cdr types)
                   `(cons ,g!result ,g!rest)
                   g!result)))
          ((make-token-p (car types))
           (destructuring-bind (mt &key type value) (car types)
             (declare (ignore mt))
             `(if (and (next-token)
                       (token-p current-token)
                       (eq (token-type current-token) ,type)
                       (equal (token-value current-token) ,value))
                  (progn
                    (dprint ,(mkstr "Found " value))
                    (if-let* (,@(if (cdr types)
                                    `((,g!rest  ,(sequence-to-matcher (cdr types))))))
                      ,(if (cdr types)
                           `(cons ,value ,g!rest)
                           value))))))
          (t (error "Types = ~A" types)))))

;;; figure out how to backtrack

(defmacro defgrammar (name tokens &rest composites)
  `(defun ,(name-to-fun name) (tokenizer)
     (let ((token-list (make-array 100 :adjustable t :fill-pointer 0))
           (next-token 0)
           (current-token nil))
       (labels ((next-token ()
                  (if (< next-token (fill-pointer token-list))
                      (setf current-token (aref token-list next-token)
                            next-token    (+ 1 next-token))
                      (progn
                        (setf current-token (funcall tokenizer))
                        (dprint "Fetched token: ~A" current-token)
                        #|(when (null current-token)
                        (error "Premature end of input."))|#
                        (when current-token
                          (vector-push-extend current-token token-list))
                        (incf next-token)))
                  t) 
                (backtrack (&optional (n 1))
                  (decf next-token n)
                  (when (minusp next-token)
                    (error "Not enough tokens to backtrack by ~A." n))
                  #|(setf current-token (aref token-list (- next-token 1)))|#
                  nil)
                (backtrack-to (n)
                  (setf next-token n)
                  nil)
                ,@(mapcar #'token-to-fun tokens)
                ,@(mapcar #'composite-to-fun composites)
                (parse (type)
                  (ecase type
                    ,@(mapcar (lambda (x)
                                `(,x (,(name-to-fun x))))
                              (append tokens (mapcar #'car composites))))
                  ))
         #'parse))))

