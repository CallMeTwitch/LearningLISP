;;; P08 (**) Eliminate consecutive duplicates of list elements.

(defun compress (mylist)
    (cond
        ((null mylist)
        nil
        )
        ((null (rest mylist))
        mylist
        )
        ((eql (first mylist) (first (rest mylist)))
        (compress (rest mylist))
        )
        (t
        (cons (first mylist) (compress (rest mylist)))
        )
    )
)

(format t "~a" (compress '(a a a a a b b c c c c d d a a b b e e e e e)))