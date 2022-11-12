(defpackage :test-app/controllers/root
  (:use :cl
        :utopian
        :test-app/models/post)
  (:import-from :mito
                :select-dao)
  (:export :index))
(in-package :test-app/controllers/root)

(defun index (params)
  (declare (ignore params))
  "Hello")

