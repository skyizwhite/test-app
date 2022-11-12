(defpackage :test-app
  (:nicknames :test-app/main)
  (:use :cl)
  (:import-from :test-app/config/application)
  (:import-from :test-app/config/routes))
(in-package :test-app)
