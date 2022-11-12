(defpackage :test-app/config/environments/local
  (:use :cl))
(in-package :test-app/config/environments/local)

`(:databases
  ((:maindb . (:postgres
               :host "db"
               :port 5432
               :database-name "test-app"
               :username "root"
               :password "password"))))
