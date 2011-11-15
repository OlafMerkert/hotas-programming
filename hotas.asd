(defsystem "hotas"
  :depends-on (:ol-utils
               :cl-typesetting
               :cl-who
               :levenshtein)
  :serial t
  :components
  ((:file "packages")
   (:file "tokenizer")
   (:file "parser")
   (:file "lua-parser")
   (:file "dcs-commands")
   (:file "command-table-tex")
   #|(:file "logi-commands")|#
   #|(:file "command-table-pdf")|#))
