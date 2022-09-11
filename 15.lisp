;;; P15 (**) Replicate the elements of a list a given number of times.

(defun repeat (q n)
    (cond
        ((equal n 0)
            nil
        )
        (t
            (append (list q) (repeat q (- n 1)))
        )
    )
)

(defun repli (mylist n)
    (cond
        ((null mylist)
            nil
        )
        (t
            (append (repeat (first mylist) n) (repli (rest mylist) n))
        )
    )
)

(format t "~a" (repli '(a b c) 3))