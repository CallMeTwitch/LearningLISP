;;; P40 (**) Goldbach's conjecture.

(defun prime (num &optional (k 2))
    (cond
        ((equal num 1)
            nil
        )
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

(defun goldbach (a &optional (b 0))
    (cond
        ((and (prime a) (prime b))
            (list a b)
        )
        (t
            (goldbach (- a 1) (+ b 1))
        )
    )
)

(format t "~a" (goldbach 234568))