;;; P33 (*) Determine whether two positive integer numbers are coprime.

(defun coprime (a b)
    (equal (gcd a b) 1)
)
(format t "~a" (coprime 22 73))