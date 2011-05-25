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
              :|Keyname| key :|Up| "true"))))))))

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
     (:|GameProfile| :|xmlns| "http://www.logitech.com/schemas/2009/gaming/game_profile"
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

(progn
  (defvar *joystick-buttons* #1=(make-hash-table))
  (defvar *joystick-bindings* #1#)
  (defun clear-joysticks ()
    (setf *joystick-buttons* #1#
          *joystick-bindings* #1#)))

(defclass joystick-input ()
  ((model :accessor model
          :initarg  :model)
   (functionality :accessor functionality
                  :initarg  :functionality)
   (nr :accessor nr
       :initarg  :nr)))

(defparameter *default-mode* (list 1 2 3))

(defmacro in-modes (modes &body body)
  `(let ((*default-mode* (list ,@modes)))
     ,@body))

(defclass bound-joystick-input (joystick-input)
  ((mode :accessor mode
         :initarg  :mode
         :initform *default-mode*)
   (pause :accessor pause
          :initarg  :pause
          :initform nil)))

(defmethod initialize-instance :after ((input bound-joystick-input) &key)
  (bind-commands input))


(defclass button (bound-joystick-input)
  ((action :accessor action
           :initarg  :action)))

(defclass axis (bound-joystick-input)
  ((action-min :accessor action-min
               :initarg  :min)
   (action-max :accessor action-max
               :initarg  :max)))

(defclass hat (bound-joystick-input)
  ((action-n :accessor action-n
             :initarg  :n)
   (action-s :accessor action-s
             :initarg  :s)
   (action-w :accessor action-w
             :initarg  :w)
   (action-e :accessor action-e
             :initarg  :e)))

(defclass zone (bound-joystick-input)
  ())

;;; TODO figure out how to handle zone commands (likely a different command
;;; than bind)

(defmacro defjoystick (name &key model axis buttons hats)
  (declare (ignorable name))
  (labels ((def-func (func identifier nr)
             `(setf (gethash ',identifier *joystick-buttons*)
                    (make-instance 'joystick-input
                                   :model ,model
                                   :functionality ',func
                                   :nr ,nr)))
           (def-button (identifier nr)
             (def-func 'button identifier nr))
           (def-axis (identifier nr)
             (def-func 'axis identifier nr))
           (def-hat (identifier nr)
             (def-func 'hat identifier nr)))
    `(progn
       ,@(mapcar #'def-axis axis (lrange axis))
       ,@(mapcar #'def-button buttons (lrange buttons))
       ,@(mapcar #'def-hat hats (lrange hats)))))

(defparameter *keyword-map*
  '((:left :min)
    (:right :max)
    (:aft :min)
    (:forward :max)
    (:down :min)
    (:up :max)))

(defun replace-keywords (k)
  (mapcar (lambda (x) (aif (assoc1 x *keyword-map*)
                           (car it)
                           x))
          k))

(defun collect-strings (k)
  (mapcar (lambda (x)
            (if (and (consp x) (stringp (car x)))
                `(list ,@x)
                x))
          (collect k :key #'stringp :test (lambda (x y) (and x y)))))

(defmacro bind (input &rest commands)
  (let ((js-input (gethash input *joystick-buttons*)))
    `(progn
       (format t ,(mkstr "* Binding " input " ..~%"))
       (setf (gethash ',input *joystick-bindings*)
             (make-instance ',(functionality js-input)
                            :model ,(model js-input)
                            :nr ,(nr js-input)
                            ,@(replace-keywords (collect-strings commands)))))))

(defvar *command-counter* 0)

(defun next-command-id ()
  (incf *command-counter*))

(progn
  (defvar *generated-commands* #1=(make-hash-table :test #'equal))
  (defvar *generated-commands/pause* #1#)

  (defun clear-generated-commands ()
    (setf *generated-commands* #1#
          *generated-commands/pause* #1#)))

(defmethod bind-command ((input bound-joystick-input) command)
  (let ((name (command-name command)))
    (car (gethash/c name (if (pause input)
                             *generated-commands/pause*
                             *generated-commands*)
                    (let ((id (next-command-id)))
                      (cons id
                            (if (pause input)
                                (build-command/pause id command)
                                (build-command id command))))))))

(defmacro def-bind-commands (input &rest actions)
  `(defmethod bind-commands ((,input ,input))
     (with-slots (,@actions) ,input
       ,@(mapcar #`(unless (typep ,a1 'fixnum)
                     (format t ,(mkstr "** Binding " a1 "~%"))
                     (let ((command (find-best-match% ,a1)))
                       (setf ,a1
                             (bind-command ,input command))))
                 actions))))

(progn
  (def-bind-commands button action)
  (def-bind-commands axis action-min action-max)
  (def-bind-commands hat action-n action-s action-w action-e))
