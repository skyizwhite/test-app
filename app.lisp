(defpackage :test-app/app
  (:use :cl)
  (:import-from :utopian
                :defroutes
                :defapp)
  (:import-from :assoc-utils
                :aget))
(in-package :test-app/app)

(defun index (params)
  (declare (ignore params))
  "<html><body>Hello, Utopian!</body></html>")

(defun hello (params)
  (format nil "Hello, ~A" (aget params "name")))

(defroutes *routes*
  ((:get "/" #'index)
   (:get "/hello" #'hello)))

(defapp test-app () ())

(make-instance 'test-app :routes *routes*)
