(in-package #:command-table-tex)

(defparameter *test-output* #P "/home/olaf/test-output.tex")

(defun tex-escape (string)
  (dolist (rl '(("&" . "\\&")
                ("%" . "\\%")))
    
    (setf string (string-replace-all (car rl) string (cdr rl))))
  string)

(defun add-modifiers (commands)
  (flet ((modi (ref name)
           `((:combos ((:key . "") (:reformers ,ref)))
             (:name . ,name))))
    (cons (cons "Modifier Notation"
                (mapcar #'modi
                        (assoc1 :dcs *modifiers*)
                        (assoc1 :human *modifiers*)))
          commands)))

(defmacro! with-tex-output (file &body body)
  `(with-open-file (,g!tex-stream ,file :direction :output :if-exists :supersede)
     (flet ((str (,g!str &rest ,g!args)
                (fresh-line ,g!tex-stream)
                (apply #'format ,g!tex-stream ,g!str ,g!args ))
            (tex (,g!com &rest ,g!args)
              (fresh-line ,g!tex-stream)
              (format ,g!tex-stream
                      "\\~A~{{~A}~}~%"
                      ,g!com ,g!args))
            (tex% (,g!com &rest ,g!args)
              (fresh-line ,g!tex-stream)
              (format ,g!tex-stream
                      "\\~A~{ ~A~}~%"
                      ,g!com ,g!args))
            (row (&rest ,g!cells)
              (fresh-line ,g!tex-stream)
              (format ,g!tex-stream"~{~A~^ & ~} \\\\~%" ,g!cells)))
       ,@body)))

(defconfun command-table-tex (file &optional (aircraft "A-10C") all)
  (with-tex-output file
    (str "\\documentclass[a4paper,landscape]{article}")
    (str "\\usepackage[margin=1cm]{geometry}")
    (tex "usepackage" "multicol")
    (tex "setlength" "\\parindent" "0pt")
    (tex "newcommand" "\\myrule" "\\vspace{0.05cm} \\hrule \\vspace{0.05cm}")
    (tex "begin" "document")
    (tex "centerline" (format nil "\\huge \\bfseries DCS ~A Keyboard Bindings" aircraft))
    (tex "raggedcolumns")
    (tex "raggedbottom")
    (tex "begin" "multicols*" 3)
    (dolist (category (add-modifiers (sorted-commands (not all) config)))
      (tex "vspace" "0.3cm")
      (str "{\\bfseries \\large ~A} \\vspace{0.1cm}~%" (tex-escape (car category)))
      (tex "myrule")
      (dolist (command (cdr category))
        (str "{")
        (tex "parbox" "7cm" (tex-escape (command-name command)))
        (tex "hfill")
        (str (format nil "\\verb|~A|" (command-combo-emacs command)))
        (str "}")
        (tex "myrule"))
      (str "~%"))
    (tex "end" "multicols*")
    (tex "end" "document")))

(defun load-lua-generate-tex (lua aircraft &optional all)
  (let* ((lua-file (merge-pathnames lua #P "/home/olaf/Projekte/hotas-programming/"))
         (tex-file (make-pathname :type "tex"
                                  :name (if all (mkstr (pathname-name lua-file) ".all")
                                            (pathname-name lua-file))
                                  :defaults lua-file)))
    (load-config lua-file)
    (dbug "config loaded")
    (command-table-tex tex-file aircraft all)
    (dbug "tex generated")))


(defun samples (&optional all)
  (load-lua-generate-tex #P"a-10-v1111-default.lua" "A-10C 1.1.1.1 Default" all)
  (load-lua-generate-tex #P"ka-50-v1111-default.lua" "Ka-50 1.1.1.1 Default" all))

(defun custom ()
  (load-lua-generate-tex #P"a-10c keyboard/Keyboard.lua" "A-10C Customised"))

(defparameter *ka-50-config* (merge-pathnames "ka-50-v2-default.lua" #P"/home/olaf/Projekte/hotas-programming/"))
