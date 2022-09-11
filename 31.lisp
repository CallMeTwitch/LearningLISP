;;; P31 (**) Determine whether a given integer number is prime.

(defun prime (num &optional (k 2))
    (cond
        ((equal num 2)
            t
        )
        ((equal (mod num k) 0)
            nil
        )
        ((> (* k k) num)
            t
        )
        (t
            (prime num (+ k 1))
        )
    )
)

(format t "~a" (prime 7))