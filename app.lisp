(defpackage :test-app
  (:use :cl :utopian))
(in-package :test-app)

(defun index (params)
  (declare (ignore params))
  "<html><body>Haai, World!</body></html>")

(defroutes *routes*
  ((:get "/" #'index)))

(defapp test-app () ())

(make-instance 'test-app :routes *routes*)

