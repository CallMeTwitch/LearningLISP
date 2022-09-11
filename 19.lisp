;;; P19 (**) Rotate a list N places to the left.

(defun split-front (mylist k)
    (cond 
        ((<= k 0)
            nil
        )
        (t
            (cons (car mylist) (split-front (cdr mylist) (- k 1)))
        )
    )
)

(defun split-back (mylist k)
    (cond
        ((<= k 0)
            mylist
        )
        (t
            (split-back (cdr mylist) (- k 1))
        )
    )
)

(defun rotate (mylist k)
    (append (split-back mylist k) (split-front mylist k))
)

(format t "~a" (rotate '(a b c d e f g h) 3))