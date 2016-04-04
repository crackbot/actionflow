
(defpackage :actionflow
  (:use :cl :parenscript 
        :contracts.paren :plus.paren :ps-events :serve.paren))

(in-package :actionflow)

(defpssyslib "af" :actionflow
  :package :actionflow)

(defpsmacro remove-el! (arr el)
  `(setf ,arr (_ reject ,arr (lambda (match) (eql match ,el)))))

