(defpackage #:test-app/controllers/root
  (:use #:cl
        #:utopian)
  (:export #:index))
(in-package #:test-app/controllers/root)

(defun index (params)
  (declare (ignore params))
  (format t "~a" params))
