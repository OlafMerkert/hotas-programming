(in-package #:logi-commands)

(defun build-all-key-commands (commands) 
  (loop
     for command in commands
     and id from 1 by 2
     and idp from 2 by 2
     when (command-combo command)
     collect  (build-keystroke id command)
     and
     collect  (build-command/pause idp command)))

(defparameter *profile-output* #P"/home/olaf/Projekte/hotas-programming/dcs-a10c-profil.xml")

(defconfun export-all-commands (out-file)
  (let* ((commands (command-list config))
         (xmlcommands (build-all-key-commands commands))
         (file-content (build-profile-skeleton :name "DCS A10-C"
                                               :author "Lisp Profile Generator"
                                               :commands xmlcommands)))
    (with-open-file (stream out-file :direction :output :if-exists :supersede)
      (princ file-content stream))
    nil))