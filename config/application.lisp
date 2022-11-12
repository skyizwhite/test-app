(defpackage #:test-app/config/application
  (:use #:cl
        #:utopian)
  (:import-from #:lack.component
                #:to-app
                #:call)
  (:import-from #:lack
                #:builder)
  (:import-from #:cl-ppcre)
  (:export #:test-app-app))
(in-package #:test-app/config/application)

(defapp test-app-app ()
  ()
  (:config #P"environments/")
  (:content-type "application/json; charset=utf-8"))

(defmethod to-app ((app test-app-app))
  (builder
   :accesslog
   (:mito (db-settings :maindb))
   (call-next-method)))
