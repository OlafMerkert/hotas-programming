(in-package #:logi-commands)

(eval-when (:compile-toplevel :load-toplevel :execute)
 (setf cl-who:*downcase-tokens-p*      nil
       cl-who:*html-empty-tag-aware-p* nil))

(defparameter *logitech-key-conversions*
  '(("["      "LBRACKET")
    ("]"      "RBRACKET")
    ("Num."   "NUMPERIOD")
    ("`"      "TILDE")
    ("Esc"    "ESCAPE")
    ("LWin"   "LGUI")
    ("RWin"   "RGUI")
    ("'"      "QUOTE")
    ("="      "EQUAL")
    ("+"      "PLUS")
    ("-"      "MINUS")
    (","      "COMMA")
    ("/"      "SLASH")
    ("."      "PERIOD")
    ("Num+"   "NUMPLUS")
    ("Num-"   "NUMMINUS")
    ("Space"  "SPACEBAR")
    (";"      "SEMICOLON")
    ;; ("<-"  "BACKSPACE")
    ("Num*"   "NUMSTAR")
    ("Num/"   "NUMSLASH")
    ("SysRq"  "PRINTSCREEN")
    ("\\"     "BACKSLASH")
    ))


(defun format-key-logitech (key)
  (aif (assoc key *logitech-key-conversions* :test #'string-equal)
       (second it)
       (string-upcase key)))

(defun command-combo-logi (command)
  (aif (command-combo command)
       (cons (format-key-logitech (car it))
             (translate-modifiers :dcs :logi (cdr it)))))

(defun build-command (id command &optional pause)
  (cl-who:with-html-output-to-string (stream)
   (let ((combo (command-combo-logi command)))
     (cl-who:htm
      (:|Command| :|Id| id :|Name| (command-name command)
        (dolist (key (reverse combo))
          (cl-who:htm
           (:|Event| :|Type| "Key"
             :|Keyname| key :|Up| "false")))
        (when pause
          (cl-who:htm
           (:|Event| :|Type| "Pause" :|Time| pause)))
        (dolist (key combo)
          (cl-who:htm
           (:|Event| :|Type| "Key"
             :|Keyname| key :|Up| "true")))
      
        )))))

(defun build-command/pause (id command &optional (pause 100))
  (build-command id command pause))

(defun build-keystroke (id command)
  (cl-who:with-html-output-to-string (stream)
   (let ((combo (command-combo-logi command)))
     (cl-who:htm
      (:|Command| :|Id| id :|Name| (command-name command)
        :|IsKeyStroke| "true"
        (dolist (key (reverse combo))
          (cl-who:htm
           (:|Event| :|Type| "Key"
             :|Keyname| key :|Up| "false"
             :|KeynameUndo| key))))))))

(defun build-axis-command (id name min max)
  (unless min (setf min -1))
   (unless max (setf max -1))
  (cl-who:with-html-output-to-string (stream)
    (cl-who:htm
     (:|AxisCommand| :|Id| id :|Name| name
       :|RefIdMin|  min
       :|RefIdMax|  max))))

(defun build-cycle-command (id name parts)
  (cl-who:with-html-output-to-string (stream)
    (cl-who:htm
     (:|CycleCommand| :|Id| id :|Name| name
       (dolist (p parts)
         (cl-who:htm
          (:|CommandRef| :|RefId| p)))))))

(defun build-hat-command (id name n e s w)
  (cl-who:with-html-output-to-string (stream)
    (cl-who:htm
     (:|HatCommand| :|Id| id :|Name| name
       :|HatType| "8-way"
       :|RefIdN| n
       :|RefIdS| s
       :|RefIdW| w
       :|RefIdE| e
       :|RefIdNE| -1
       :|RefIdNW| -1
       :|RefIdSE| -1
       :|RefIdSW| -1))))

;;; TODO zonenbefehle
;;; TODO Befehlszuweisung
;;; TODO Achseneinstellungen
;;; TODO FFB Einstellungen
