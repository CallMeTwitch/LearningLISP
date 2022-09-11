;;; P14 (*) Duplicate the elements of a list.

(defun duplicate (mylist)
    (cond
        ((null mylist)
            nil
        )
        (t
            (append (list (first mylist) (first mylist)) (duplicate (rest mylist)))
        )
    )
)

(format t "~a" (duplicate '(a a a b b c d)))