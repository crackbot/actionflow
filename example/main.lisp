
(defpackage :actionflow-example
  (:use :cl :hunchentoot :cl-who :parenscript
        :actionflow :contracts.paren :serve.paren :plus.paren))

(in-package :actionflow-example)

(defpslib "example-webapp"
    :paren-source-dir #p"/home/cb/dev/2014/actionflow/example/paren"
    :system-source-dir #p"/home/cb/dev/2014/actionflow/example"
    :package :actionflow-example)

(defparameter *ps-libs* '("plus" "contracts" "af" "example-webapp"))

(defmacro with-html (&body body)
  `(with-html-output-to-string (*standard-output* nil :prologue t)
     ,@body))

(hunchentoot:define-easy-handler (test :uri "/") ()
  (let ((urls (mapcan #'all-files-urls
                      (mapcar #'find-pslib *ps-libs*))))
    (with-html
      (:html
       (:head (:title "actionflow-example Test"))
       (:body
        (:div :id "main")
        (:script (str (compile-psruntime (find-pslib "plus"))))
        (:script (str (compile-psruntime (find-pslib "contracts"))))
        (loop for url in urls
             do (htm (:script :src (concatenate 'string "/js/" url))))
        
       (:script "main()"))))))

(hunchentoot:start (make-instance 'hunchentoot:easy-acceptor :port 4141))
