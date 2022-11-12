(defpackage :test-app/app
  (:use :cl
        :test-app/config/routes
        :test-app/config/application))
(in-package :test-app/app)

(make-instance 'test-app-app
               :routes *routes*
               :models #P"models/")
