#|
  This file is a part of lcc project.
  Copyright (c) 2018 Naoya Yamashita
|#

#|
  Author: Naoya Yamashita
|#

(defsystem "lcc"
  :version "0.1.0"
  :author "Naoya Yamashita"
  :license "MIT"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "lcc"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "lcc-test"))))
