;;; P17 (*) Split a list into two parts; the length of the first part is given.

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
            (split-back (rest mylist) (- k 1))
        )
    )
)

(defun split (mylist k)
    (list (split-front mylist k) (split-back mylist k))
)

(format t "~a" (split '(a b c d e f g) 3))