#|
  This file is a part of lcc project.
  Copyright (c) 2018 Naoya Yamashita
|#

(defsystem "lcc-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Naoya Yamashita"
  :license "MIT"
  :depends-on ("lcc"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "lcc"))))
  :description "Test system for lcc"

  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
