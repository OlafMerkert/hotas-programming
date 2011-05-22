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
        #:lua-parser))