(defpackage unko
  (:use :cl)
  (:export :unko-n-times))
(in-package :unko)

(defun unko-n-times (n)
  (if (and (plusp n)
	   (integerp n))
      (loop repeat n
	    collect "💩")
      (error (format nil "~A must be natural number." n))))
