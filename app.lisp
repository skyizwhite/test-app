(ql:quickload "markup")
(markup:enable-reader)

(lambda (env)
  (declare (ignore env))
  `(200 (:content-type "text/html")
        (,(markup:write-html <h1>Hello World from Common Lisp!</h1>))))
