(defpackage :test-app/config/routes
  (:use :cl
        :utopian
        :test-app/utils/routes)
  (:export :*routes*))
(in-package :test-app/config/routes)

(defroutes *routes* ()
  (:controllers #P"../controllers/"))

(route-tree
 (namespace "/v1"
   (:GET "/" "root:index")))

