(defpackage #:test-app/config/environments/local
  (:use #:cl))
(in-package #:test-app/config/environments/local)

`(:databases
  ((:maindb . (:postgres
               :database-name "test-app"
               :username "test-app"
               :password ""))))
