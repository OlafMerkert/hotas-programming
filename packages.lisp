(in-package #:cl-user)

(defpackage #:lua-parser
  (:nicknames #:lua)
  (:use #:cl #:ol-utils))

(defpackage #:meta-parser
  (:nicknames #:meta)
  (:use #:cl #:ol-utils))

(defpackage #:tokenizer
  (:use #:cl #:ol-utils))

(defpackage #:parser
  (:use #:cl #:ol-utils
        #:tokenizer))

(defpackage #:lua-parser
  (:use #:cl #:ol-utils
        #:tokenizer
        #:parser))

(defpackage #:dcs-commands
  (:use #:cl #:ol-utils
        #:lua-parser)
  (:export #:load-config
           #:defconfun
           #:modifier-list
           #:command-list
           #:grouped-command-list
           #:*modifiers*
           #:translate-modifier
           #:translate-modifiers
           #:sort-modifiers
           #:sorted-commands
           #:command-name
           #:command-combo
           #:command-combo-emacs))

(defpackage #:command-table
  (:use #:cl #:ol-utils
        #:dcs-commands)
  (:export #:command-table-pdf))

(defpackage #:logi-commands
  (:use #:cl #:ol-utils
        #:dcs-commands))
