(in-package #:dcs-commands)

(defparameter *text-font* (pdf:get-font "times-roman"))
(defparameter *command-font* (pdf:get-font "courier"))
(defparameter *test-output* #P "/home/olaf/test-output.pdf")

;;; todo put a list of modifiers at the start
(defconfun command-table-pdf (file &optional (all nil))
  (let (row-parity
        content)
    (tt:with-document ()
      (setf content
            (tt:compile-text (:font "helvetica"
                                    :font-size 9)
              (tt:paragraph (:font-size 24 :h-align :center)
                (tt:put-string "DCS Keyboard reference"))
              (tt:table (:col-widths '(250 70) :splittable-p t)
                (dolist (category (sorted-commands (not all) config))
                  (tt:row #1=(:background-color (if (notf row-parity)
                                                    :gray :white))
                          (tt:cell (:col-span 2)
                            (tt:paragraph (:font "times-bold" :h-align :center :font-size 11)
                              (tt:put-string (car category)))))
                  (dolist (command (cdr category))
                    (tt:row #1#
                      (tt:cell ()
                        (tt:paragraph (:font *text-font* :font-size 9)
                          (tt:put-string (command-name command))))
                      (tt:cell ()
                        (tt:paragraph (:font *command-font* :font-size 9)
                          (tt:put-string (command-combo-emacs command))))))))))
      #|(tt:draw-multicolumn content :columns 3 :orientation
      :landscape :margins '(20 20 20 20)
      :column-space 10)|#
      (tt:draw-pages content :orientation :portrait :margins '(20 30 20 40))
      (pdf:write-document file))))

(in-package #:tt)
(export '(draw-multicolumn with-page))
(defun draw-multicolumn (content &rest args
                         &key (columns 2)
                         (column-space 0)
                         (size *default-page-size*)
                         (orientation *default-page-orientation*)
                         bounds margins
                         &allow-other-keys)
  (with-quad (left-margin top-margin right-margin bottom-margin) margins
    (let* ((bounds (or bounds (compute-page-bounds size orientation)))
           (width (aref bounds 2))
           (height (aref bounds 3))
           (column-width (floor (/ (- width left-margin right-margin
                                      (* column-space columns))
                                    columns)))
           (column-height (- height top-margin bottom-margin)))
      (dotimes (i columns)
        (draw-block content (+ left-margin (* i (+ column-width column-space)))
                    (- height top-margin) column-width column-height)))))
;;; todo fix this stuff to work properly
;;; current issues:
;;; * orientation is not honoured in the output
;;; * multiple pages do not work
