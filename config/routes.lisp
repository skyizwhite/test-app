(defpackage :test-app/config/routes
  (:use :cl
        :utopian)
  (:export :*routes*))
(in-package :test-app/config/routes)

(defroutes *routes* ()
  (:controllers #P"../controllers/"))

(route :GET "/" "root:index")
