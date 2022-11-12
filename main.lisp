(defpackage :test-app
  (:nicknames :test-app/main)
  (:use :cl)
  (:import-from :test-app/config/routes)
  (:import-from :test-app/config/application)
  (:export :connect-db))
(in-package :test-app)

(setf utopian:*config-dir*
  (merge-pathnames #P"config/environments/" (asdf:system-source-directory :test-app)))

(defun connect-db (&optional (db :maindb))
    (apply #'mito:connect-toplevel (utopian:db-settings db)))
