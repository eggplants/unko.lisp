(defsystem "unko"
  :version "0.1.0"
  :author "eggplants"
  :license "LLGPL"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "unko/tests"))))

(defsystem "unko/tests"
  :author "eggplants"
  :license "LLGPL"
  :depends-on ("unko"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for unko"
  :perform (test-op (op c) (symbol-call :rove :run c)))
