(in-package #:lua-parser)

(defgrammar lua-simple
    (word string number delim)
  (expr (function)
        (string)
        (number)
        (assign)
        (word)
        (list))
  (noassign (string)
            (function)
            (word)
            (list))
  (list ; take special care of empty lists
   ((make-token :type 'delim :value #\{) (make-token :type 'delim :value #\}))
   ((make-token :type 'delim :value #\() (make-token :type 'delim :value #\)))
   ((make-token :type 'delim :value #\[) (make-token :type 'delim :value #\]))
   ((make-token :type 'delim :value #\{) expr list-end)
   ((make-token :type 'delim :value #\() expr list-end)
   ((make-token :type 'delim :value #\[) expr list-end))
  (list-end ((make-token :type 'delim :value #\}))
            ((make-token :type 'delim :value #\)))
            ((make-token :type 'delim :value #\]))
            ((make-token :type 'delim :value #\,) (make-token :type 'delim :value #\}))
            ((make-token :type 'delim :value #\,) (make-token :type 'delim :value #\)))
            ((make-token :type 'delim :value #\,) (make-token :type 'delim :value #\]))
            ((make-token :type 'delim :value #\,) expr list-end))
  (assign (noassign (make-token :type 'delim :value #\=) expr))
  (function ((make-token :type 'word :value "function")
             word
             list
             (make-token :type 'word :value "return")
             expr
             (make-token :type 'word :value "end"))))

(defun test-lua-simple ()
  (let* ((f (open
             ;; "/home/olaf/Projekte/hotas-programming/a10-v1110-default.lua"
             "/home/olaf/Projekte/hotas-programming/ka-50-v2-default.lua"
             ))
         (tt (tokenize f))
         (pp (parse-lua-simple tt)))
    (lambda () (funcall pp 'expr))))

(defun test-lua-simple-str (str)
  (let* ((stream (make-string-input-stream str))
         (tt (tokenize stream))
         (pp (parse-lua-simple tt)))
    (lambda () (funcall pp 'expr))))

(defun list*->list (list*)
  (let ((la (last list*)))
    (when (cdr la)
      (setf (cdr la) (cons (cdr la) nil)))
    list*))

(defun lua->lisp (expr)
  (cond ((atom expr) expr)
        ((equal (first expr) "function")
         (lua->lisp (fifth expr)))
        ((eql (first expr) #\[)
         (lua->lisp (second expr)))
        ((eql (second expr) #\=)
         (cons (keyw (string-upcase (lua->lisp (first expr))))
               (lua->lisp (cddr expr))))
        ((eql (first expr) #\{)
         (mapcar #'lua->lisp
                 (remove-if (lambda (x)
                              (or (eql x #\,)
                                  (eql x #\})))
                            (list*->list (rest expr)))))
        (t expr)))

(defun converge/collect (function point &key (test #'eql))
  "Collect the results of calling the FUNCTION, until its result is
  POINT."
  (loop
     for x = (funcall function)
     until (funcall test x point)
     collect x))

(defun parse-lua-stream-to-lisp (stream)
  ;; unless (eq :eof (peek-char t stream nil :eof nil))
  (let* ((tokenizer (tokenize stream))
         (parser (parse-lua-simple tokenizer)))
    (lua->lisp (funcall parser 'expr))))

(export '(parse-lua-stream-to-lisp))
