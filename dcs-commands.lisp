(in-package #:dcs-commands)

(defparameter *config-path* #P"/home/olaf/lisp/hotas-programming/default.lua")
(defparameter *last-config* nil)

(defun load-config (file)
  (setf *last-config*
   (with-open-file (stream file)
     (parse-lua-stream-to-lisp stream))))

(defmacro defconfun (name args &body body)
  `(defun ,name (,@args &optional (config *last-config*))
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

(defun translate-modifiers (from to mod)
  (let ((i (position mod (assoc from *modifiers*) :test #'equal)))
    (nth i (assoc to *modifiers*))))

(defun sort-modifiers (dialect mods)
  (let ((mod-list (assoc1 dialect *modifiers*)))
   (sort mods
         #'<
         :key (lambda (x) (position x mod-list :test #'equal)))))