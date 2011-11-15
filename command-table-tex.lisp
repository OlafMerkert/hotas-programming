(in-package #:command-table-tex)

(defparameter *test-output* #P "/home/olaf/test-output.tex")

(defun tex-escape (string)
  (string-replace-all "&" string "\\&"))

(defun add-modifiers (commands)
  (flet ((modi (ref name)
           `((:combos ((:key . "") (:reformers ,ref)))
             (:name . ,name))))
    (cons (list "Modifier Notation"
                (modi "LShift" "Left Shift")
                (modi "RShift" "Right Shift")
                (modi "LAlt" "Left Alt")
                (modi "RAlt" "Right Alt")
                (modi "LCtrl" "Left Control")
                (modi "RCtrl" "Right Control")
                (modi "LWin" "Left Windows")
                (modi "RWin" "Right Windows"))
          commands)))

(defconfun command-table-tex (file &optional (aircraft "A-10C") all)
  (with-tex-output file
    (str "\\documentclass[a4paper,landscape]{article}")
    (str "\\usepackage[margin=1.5cm]{geometry}")
    #|(tex "usepackage" "supertabular")|#
    (tex "usepackage" "multicol")
    (tex "newcommand" "\\stab" "\\begin{tabular}{|p{5.5cm}|p{2cm}|}\\hline")
    (tex "newcommand" "\\etab" "\\end{tabular}")
    (tex "begin" "document")
    
    (tex "twocolumn")
    (tex "centerline" (format nil "\\Large \\bfseries DCS ~A Keyboard Bindings" aircraft))
    (tex "begin" "multicols" 3)
    (dolist (category (add-modifiers (sorted-commands (not all) config)))
      (tex "indent")
      (str "{\\bfseries \\large ~A}\\\\[8pt]~%" (tex-escape (car category)))
      (tex "stab")
      (dolist (command (cdr category))
        (row (tex-escape (command-name command))
             (format nil "{\\verb|~A|}" (command-combo-emacs command)))
        (tex "hline"))
      (tex "etab")
      (str "~%"))
    (tex "end" "multicols")
    (tex "end" "document")))

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

(defun load-lua-generate-tex (lua aircraft)
  (let* ((lua-file (merge-pathnames lua #P "/home/olaf/Projekte/hotas-programming/"))
         (tex-file (make-pathname :type "tex" :defaults lua-file)))
    (load-config lua-file)
    (dbug "config loaded")
    (command-table-tex tex-file aircraft)
    (dbug "tex generated")))


(defun samples ()
  (load-lua-generate-tex #P"a10-v1110-default.lua" "A-10C")
  #|(load-lua-generate-tex "ka-50-v2-default.lua" "Ka-50 v2")|#)
