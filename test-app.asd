(defsystem "test-app"
  :class :package-inferred-system
  :author "skyizwhite"
  :version "0.0.1"
  :description "API server written in Common Lisp."
  :depends-on ("test-app/main"))

(register-system-packages "lack-component" '(#:lack.component))
