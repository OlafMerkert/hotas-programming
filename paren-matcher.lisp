(defpackage :paren-matcher
  (:use :cl :ol))

(in-package :paren-matcher)

;;; read in a file and indent according to a pair of opening and closing parens

(defun file->string (path)
  "Copy the contents of the file at PATH to a string."
  (with-open-file (in path :direction :input)
    (let* ((file-length (file-length in))
           (output (make-string file-length))
           (str-length (read-sequence output in)))
      (subseq output 0 str-length))))

(defun write-indented (sequence stream &key (start 0) end (indent 0) (newline #\newline) (space #\space))
  "As WRITE-SEQUENCE, but insert INDENT spaces at the beginning and at
every newline.  Plus, ensure we finish with a fresh line."
  (unless (and (integerp indent) (<= 0 indent))
    (error "Invalid indent level ~A." indent))
  (flet ((indent ()
           (dotimes (i indent)
             (write-char space stream))))
    (fresh-line stream)
    (do* ((index start)
          (next-nl #1=(position newline sequence :start index :end end)))
         ((not next-nl)
          (indent)
          (write-sequence sequence stream :start index :end end)
          (fresh-line stream))
      (indent)
      (write-sequence sequence stream
                      :start index :end (+ 1 next-nl))
      (setf index (+ 1 next-nl)
            next-nl #1#))))

(defun indent-at-parens (input-string out &key (opener #\{) (closer #\}) (indent 4))
  (do* ((level 0)
        (index 0)
        (next-open #1=(position opener input-string :start index :test #'char=))
        (next-clos #2=(position closer input-string :start index :test #'char=)))
       ((not (or next-open next-clos))
        ;; output the remainder
        (write-indented input-string out :start index :indent level))
    (cond ((or (not next-open)
               (> next-open next-clos))
           ;; next delim is an closer
           (write-indented input-string out :start index :end next-clos :indent level)
           (decf level indent)
           (write-indented (vector closer) out :indent level)
           (setf index (+ next-clos 1)
                 next-clos #2#))
          ((or (not next-clos)
               (< next-open next-clos))
           ;; next delim is an opener
           (write-indented input-string out :start index :end next-open :indent level)
           (write-indented (vector opener) out :indent level)
           (incf level indent)
           (setf index (+ next-open 1)
                 next-open #1#)))))
