;;; P34 (**) Calculate Euler's totient function phi(m).

(defun phi (n &optional (i 1))
    (cond
        ((equal n i)
            0
        )
        ((equal (gcd i n) 1)
            (+ 1 (phi n (+ i 1)))
        )
        (t
            (phi n (+ i 1))
        )
    )
)

(format t "~a" (phi 10))