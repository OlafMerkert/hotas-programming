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
  ;; pause ist in Millisekunden
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

(defparameter *zone-band* (cons 0 65535))

(defun build-zone-command (id name divider commands)
  (let* ((divider (mapcar (lambda (x) (floor (* x (cdr *zone-band*))))
                          divider))
         (lower (cons (car *zone-band*)
                                 divider))
         (upper (append1 divider (cdr *zone-band*)))
         (commands (mapcar (lambda (x) (if x x -1)) commands)))
    (cl-who:with-html-output-to-string (stream)
      (cl-who:htm
       (:|BandCommand| :|Id| id :|Name| name
         (loop for c in commands
              and l in lower
              and u in upper
              do (cl-who:htm (:|Band| :|RefId| c
                               :|Min| l :|Max| u))))))))

(defun build-profile-skeleton (&key (name "Unnamed")
                               (author "Unknown")
                               commands
                               assignments
                               special-options)
  (cl-who:with-html-output-to-string (stream)
    (format stream "<?xml version=\"1.0\" encoding=\"utf-8\"?>~%")
    (cl-who:htm
     (:|GameProfile| :|xmlns| "http:|//www.logitech.com/schemas/2009/gaming/game_profile"
       (:|Profile| :|Publisher| "cl-profile-generator" :|Installed| "false" :|Author| author
         (:|Name| name)
         (:|Macros|
           (format stream "~{~A~%~}" commands))
         (format stream "~{~A~%~}" assignments)
         (:|DeviceSpecialOptions|
           (format stream "~{~A~%~}" special-options)))))))

;;; TODO Befehlszuweisung
;;; TODO Achseneinstellungen
;;; TODO FFB Einstellungen
;;; TODO Modus beachten
;;; TODO was bedeutet Mapping??
