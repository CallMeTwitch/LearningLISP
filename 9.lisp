;;; P09 (**) Pack consecutive duplicates of list elements into sublists.

(defun pack (mylist)
    (cond
        ((null mylist)
        nil
        )
        ((null (rest mylist))
        mylist
        )
        ((atom (first mylist))
        (pack (append (list (list (first mylist))) (rest mylist)))
        )
        ((equal (first (first mylist)) (first (rest mylist)))
        (pack (append (list (append (first mylist) (list (first (rest mylist))))) (rest (rest mylist))))
        )
        (t
        (append (list (first mylist)) (pack (rest mylist)))
        )
    )
)

(format t "~a" (pack '(1 1 1 2 2 3 3 3 3 4 4)))