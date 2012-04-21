(in-package #:dcs-commands)

(defparameter *config-path* #P"/home/olaf/Projekte/hotas-programming/a-10-v1111-default.lua")
(defparameter *config-path-other* #P"/home/olaf/Projekte/hotas-programming/ka-50-v1111-default.lua")

(defvar *last-config* nil)

(defun load-config (file)
  (setf *last-config*
   (with-open-file (stream file)
     (parse-lua-stream-to-lisp stream))))

(defmacro defconfun (name args &body body)
  `(defun ,name (,@args
                 ,@(unless (member '&optional args) `(&optional))
                 (config *last-config*))
     ,@body))

(defconfun modifier-list ()
  (mapcar #'cdr (assoc1 :modifiers config)))

(defconfun command-list ()
  (assoc1 :keycommands config))

(defconfun grouped-command-list ()
  (group-by (lambda (x) (assoc1 :category x))
            (assoc1 :keycommands config)))

(defparameter *modifiers*
  (list
   (list :dcs "RWin" "LWin" "RCtrl" "LCtrl" "RAlt" "LAlt" "RShift" "LShift")
   (list :emacs "rW-" "W-" "rC-" "C-" "rM-" "M-" "rS-" "S-")
   (list :logi "RGUI" "LGUI" "RCTRL" "LCTRL" "RALT" "LALT" "RSHIFT" "LSHIFT")
   (list :human "Right Windows" "Left Windows" "Right Control" "Left Control" "Right Alt" "Left Alt" "Right Shift" "Left Shift")))

(defun translate-modifier (from to mod)
  (let ((i (position mod (assoc from *modifiers*) :test #'equal)))
    (nth i (assoc to *modifiers*))))

(defun translate-modifiers (from to mods)
  (mapcar (lambda (x) (translate-modifier from to x)) mods))

(defun sort-modifiers (dialect mods)
  (let ((mod-list (assoc1 dialect *modifiers*)))
   (sort mods
         #'<
         :key (lambda (x) (position x mod-list :test #'equal)))))

(defconfun sorted-commands (&optional (only-assigned t))
  (let* ((filtered-config
           (if only-assigned
               (remove-if-not (lambda (x) (assoc1 :combos x)) (command-list config))
               (command-list config)))
         (grouped-config
          (group-by (lambda (x) (assoc1 :category x)) filtered-config))
         (sorted-config
          (sort
           (mapcar (lambda (x)
                     (cons (car x)
                           (sort (cdr x) #'string<=
                                 :key (lambda (y) (assoc1 :name y)))))
                   grouped-config)
           #'string<=
           :key #'car)))
    sorted-config))

(defun command-name (command)
  (assoc1 :name command))

(defun command-combo (command)
  (aif (assoc1 :combos command)
       (cons (assoc1 :key (car it))
             (assoc1 :reformers (car it)))))

(defun command-combo-emacs (command)
  (aif (command-combo command)
       (let ((key (car it))
             (mods (sort-modifiers :emacs (translate-modifiers :dcs :emacs (cdr it)))))
         (format nil "~{~A~}~A" mods key))
       ""))

(defconfun find-command-fuzzy (search-terms)
  (let* ((search-terms (mklist search-terms))
         (combined (format nil "~{~A~^ ~}" search-terms))
         (filtered-commands
          (remove-if-not
           (lambda (x)
             (let ((name (command-name x)))
              (every (lambda (y)
                       (search y name :test #'char-equal))
                     search-terms)))
           (command-list config))))
    (sort filtered-commands #'<
           :key (lambda (x)
                  (levenshtein:distance
                   (string-downcase combined)
                   (string-downcase (command-name x)))))))

(defun most-simple-assigned (commands)
  (let ((assigned (remove-if-not (lambda (x) (assoc1 :combos x)) commands)))
    (sort assigned #'<
          :key (lambda (x) (length (assoc1 :reformers
                                           (car (assoc1 :combos x))))))))

(defconfun find-best-match% (search-terms)
  (let ((finds (find-command-fuzzy search-terms config)))
    (if (null finds)
        (error "Search for ~{'~S'~^, ~} does not match anything."
               (mklist search-terms))
        (let ((assigned (most-simple-assigned finds)))
          (format t "    Best search result: ~S~:[ (Not bound)~;~]~%"
                  (command-name (first finds))
                  (command-combo (first finds)))
          (if (null assigned)
              (error "Search for ~{~S~^, ~} does not match anything with bindings."
                     (mklist search-terms))
              (progn
                (format t "*** Best bound result: ~S~%"
                        (command-name (first assigned)))
                (when (rest assigned)
                 (format t "    Other bound results:~{~%    + ~S~}~%"
                         (mapcar #'command-name (rest assigned))))
                (first assigned)))))))

(defmacro find-best-match (&rest search-terms)
  `(find-best-match% (list ,@search-terms)))
