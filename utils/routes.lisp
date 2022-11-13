(defpackage :test-app/utils/routes
  (:use :cl)
  (:export :route-tree
           :namespace))
(in-package :test-app/utils/routes)

(defun route-tree (&rest paths)
  (mapcar #'(lambda (path)
              (apply #'utopian:route path))
          paths))


(defmacro namespace (parent-route &body routes)
  `(quote ,@(loop
    :for (method route bind) :in routes
    :collect `(,method
               ,(concatenate 'string parent-route route)
               ,bind))))
