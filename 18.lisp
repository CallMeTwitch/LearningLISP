;;; P18 (**) Extract a slice from a list.

(defun slice (mylist i k)
    (cond
        ((> i 1)
            (slice (rest mylist) (- i 1) (- k 1))
        )
        (t
            (cond
                ((>= k 1)
                    (append (list (first mylist)) (slice (rest mylist) (- i 1) (- k 1)))
                )
                (t
                    nil
                )
            )
        )
    )
)

(format t "~a" (slice '(a b c d e f g h i j k) 3 7))