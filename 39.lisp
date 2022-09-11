;;; P39 (*) A list of prime numbers.

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

(defun prime-range (a b)
    (cond
        ((equal a b)
            (if (prime a)
                (list a)
                nil
            )
        )
        ((< a b)
            (if (prime a)
                (cons a (prime-range (+ a 1) b))
                (prime-range (+ a 1) b)
            )
        )
        (t
            (if (prime a)
                (cons a (prime-range (- a 1) b))
                (prime-range (- a 1) b)
            )
        )
    )
)

(format t "~a" (prime-range 2 20))