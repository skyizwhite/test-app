(defpackage #:test-app/controllers/root
  (:use #:cl
        #:utopian
        #:test-app/views/root)
  (:export #:index))
(in-package #:test-app/controllers/root)

(defun index (params)
  (declare (ignore params))
  (render 'index-page))
