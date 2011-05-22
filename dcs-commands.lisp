(in-package #:dcs-commands)

(defparameter *config-path* #P"/home/olaf/lisp/hotas-programming/default.lua")
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
   (list :logi "RGUI" "LGUI" "RCTRL" "LCTRL" "RALT" "LALT" "RSHIFT" "LSHIFT")))

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
