;;; P22 (*) Create a list containing all integers within a given range.

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

(format t "~a" (range 4 9))