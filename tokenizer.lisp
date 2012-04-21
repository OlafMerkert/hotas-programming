(in-package #:tokenizer)

(export '(token token-type token-value equals token-p
          make-token
          tokenize
          word number string delim))

(declaim (inline whitespace-p eof-p eol-p))

(defstruct token
  type
  value)

(defmethod equals ((a token) (b token))
  (and (eql (token-type a) (token-type b))
       (equal (token-value a) (token-value b))))

(defmethod print-object ((token token) stream)
  (print-unreadable-object (token stream :type nil :identity nil)
    (format stream "~:(~A~) Token ~A"
            (token-type  token)
            (token-value token))))

(defun whitespace-p (char)
  (and (characterp char)
       (<= (char-code char) #.(char-code #\Space))))

(defun eof-p (char)
  (eql char :eof))

(defun eol-p (char)
  (or (eql char #\Newline)
      (eql char #\Return)))

(defun word-char-p (char)
  (unless (eof-p char)
   (or (alpha-char-p char)
       (eql char #\_)
       (digit-char-p char))))

(defmacro while (condition &body body)
  `(do ()
       ((not ,condition))
     ,@body))

(defmacro until (condition &body body)
  `(do ()
       (,condition)
     ,@body))

(defmacro neither (&rest conditions)
  `(not (or ,@conditions)))

(defun tokenize (stream)
  (let ((current-char nil)
        (value-buffer (make-array 100 :element-type 'character
                                  :fill-pointer 0
                                  :adjustable t)))
   (labels ((read-next-char ()
              (setf current-char (read-char stream nil :eof)))
            (skip-whitespace ()
              (while (whitespace-p current-char)
                (read-next-char)))
            (skip-to-eol ()
              (until (eol-p current-char)
                (read-next-char)))
            (skip-to-end-of-comment ()
              (read-next-char)
              (read-next-char)
              (let ((n (peek-char nil stream nil :eof)))
                (if (and (char= #\[ current-char)
                         (char= #\[ n))
                    (skip-to-]])
                    (skip-to-eol))))
            (skip-to-]] ()
              (do ((previous nil))
                  ((and previous (char= #\] current-char)) (read-next-char))
                (setf previous (char= #\] current-char))
                (read-next-char)))
            (store-current-read-next ()
              (vector-push-extend current-char value-buffer)
              (read-next-char))
            (extract-stored ()
              (prog1 (copy 'string value-buffer)
                (setf (fill-pointer value-buffer) 0)))
            (invalid-char ()
              (if (zerop (fill-pointer value-buffer))
                  (error "Invalid character ~S." current-char)
                  (error "Invalid character ~S after ~S."
                         current-char value-buffer)))
            (eliminate-comments ()
              (when (and (eql current-char #\-)
                         (eql (peek-char nil stream nil :eof)
                              #\-))
                (skip-to-end-of-comment)
                (skip-whitespace)
                (eliminate-comments)))
            ;; main tokenizer function
            (read-next-token ()
              (skip-whitespace)
              ;; test for comment line
              (eliminate-comments)
              (cond ((eof-p current-char) nil)
                    ((alpha-char-p current-char)
                     (read-word))
                    ((digit-p current-char)
                     (read-number))
                    ((and (char= current-char #\-)
                          (digit-p (peek-char nil stream nil :eof)))
                     (read-number t))
                    ((or (char= #\" current-char)
                         (char= #\' current-char))
                     (read-string current-char #\\))
                    (t (read-symbol))))
            ;; token types method
            (read-word ()
              (loop do (store-current-read-next)
                 while (word-char-p current-char))
              (make-token :type 'word
                          :value (extract-stored)))
            
            (read-number (&optional sign)
              (when sign
                (store-current-read-next))
              (loop do (store-current-read-next)
                 while (or (digit-p current-char)
                           (eql #\. current-char)))
              (make-token :type 'number
                          :value (extract-stored)))
            
            (read-string (terminator escape)
              (read-next-char)
              (while (neither (eof-p current-char)
                              (char= current-char terminator))
                (when (char= current-char escape)
                  (read-next-char))
                (store-current-read-next))
              (when (eof-p current-char)
                (error "Unexpected EOF."))
              (read-next-char)
              (make-token :type 'string
                          :value (extract-stored)))
            
            (read-symbol ()
              (cond
                ((find current-char ",={}[]()" :test #'eql)
                 (prog1
                     (make-token :type 'delim
                              :value current-char)
                   (read-next-char)))
                ((eof-p current-char) (error "Unexpected EOF."))
                (t (invalid-char)))))
     (read-next-char)
     #'read-next-token)))

(defun test-tokenizer ()
  (let ((stream (open "/home/olaf/Projekte/hotas-programming/a10-v1110-default.lua")))
    (tokenize stream)))

(defun test-tokenizer-simple-str (str)
  (let ((stream (make-string-input-stream str)))
    (tokenize stream)))

(defun dump-tokenizer-output (tokenizer)
  (do ((token #1=(funcall tokenizer) #1#))
      ((null token))
    (format t "~A" (token-value token))
    (if (eql (token-value token) #\,)
        (terpri))))

(defun digit-p (char)
  (and (characterp char)
       (digit-char-p char)))
