;;; P41 (**) A list of Goldbach compositions.

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

(defun range (a b)
    (cond
        ((equal a b)
            (list a)
        )
        ((< a b)
            (cons a (range (+ a 1) b))
        )
        (t
            (cons a (range (- a 1) b))
        )
    )
)

(defun goldbach-range (a b)
    (if (equal (mod a 2) 0)
        (format t "~a = sum~a~%" a (goldbach a))
    )
    (cond
        ((< a b)
            (goldbach-range (+ a 1) b)
        )
        ((> a b)
            (goldbach-range (- a 1) b)
        )
        (t
            nil
        )
    )
)

(goldbach-range 9 20)