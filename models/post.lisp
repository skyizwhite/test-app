(defpackage :test-app/models/post
  (:use :cl)
  (:import-from :mito
                :deftable)
  (:export :post
           :post-title
           :post-body))
(in-package :test-app/models/post)

(deftable post ()
  ((title :col-type :text)
   (body :col-type :text)))
