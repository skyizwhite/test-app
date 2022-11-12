(defpackage :test-app/controllers/root
  (:use :cl
        :utopian
        :test-app/models/post)
  (:export :index))
(in-package :test-app/controllers/root)

(defun index (params)
  (declare (ignore params))
  (let ((posts (mito:select-dao 'post)))
    (jojo:to-json
     (mapcar #'(lambda (post)
                 `(:title ,(post-title post)
                   :body ,(post-body post)))
             posts))))


