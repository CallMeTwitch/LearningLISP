;;; P36 (**) Determine the prime factors of a given positive integer (2).

(defun prime-factors (n &optional (i 2) (k 0))
    (cond
        ((equal n 1)
            (list (list i k))
        )
        ((equal (mod n i) 0)
            (prime-factors (/ n i) i (+ k 1))
        )
        ((equal k 0)
            (prime-factors n (+ i 1))
        )
        (t
            (cons (list i k) (prime-factors n (+ i 1)))
        )
    )
)

(format t "~a" (prime-factors 1240))