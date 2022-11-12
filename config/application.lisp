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
  (:content-type "text/html; charset=utf-8"))

(defmethod to-app ((app test-app-app))
  (builder
   (:static
    :path (lambda (path)
            (if (ppcre:scan "^(?:/assets/|/robot\\.txt$|/favicon\\.ico$)" path)
                path
                nil))
    :root (asdf:system-relative-pathname :test-app #P"public/"))
   :accesslog
   (:mito (db-settings :maindb))
   :session
   (call-next-method)))
