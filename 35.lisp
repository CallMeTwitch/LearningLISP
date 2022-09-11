;;; P35 (**) Determine the prime factors of a given positive integer.

(defun prime-factors (n &optional (i 2))
    (cond
        ((equal n 1)
            nil
        )
        ((equal (mod n i) 0)
            (cons i (prime-factors (/ n i) i))
        )
        (t
            (prime-factors n (+ i 1))
        )
    )
)

(format t "~a" (prime-factors 308))