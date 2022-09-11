;;; P32 (**) Determine the greatest common divisor of two positive integer numbers.

; My Function
(defun gcd2 (a b)
    (cond
        ((equal a b)
            a
        )
        ((> a b)
            (gcd2 b (- a b))
        )
        (t
            (gcd2 a (- b a))
        )
    )
)

(format t "~a~%" (gcd2 252 105))

; Builtin
(format t "~a" (gcd 252 105))