(defpackage :test-app/app
  (:use :cl :utopian))
(in-package :test-app/app)

(defun index (params)
  (declare (ignore params))
  "<html><body>Hello, Utopian!</body></html>")

(defroutes *routes*
  ((:get "/" #'index)))

(defapp test-app () ())

(make-instance 'test-app :routes *routes*)
