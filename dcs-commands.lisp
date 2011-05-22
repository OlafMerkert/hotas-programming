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