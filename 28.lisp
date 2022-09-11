;;; P28 (**) Sorting a list of lists according to length of sublists

(defun minlen (mylist &optional (minimum nil))
    (cond
        ((null mylist)
            minimum
        )
        ((or (< (length (first mylist)) (length minimum)) (null minimum))
            (minlen (rest mylist) (first mylist))
        )
        (t
            (minlen (rest mylist) minimum)
        )
    )
)

(defun removal (mylist k)
    (cond
        ((equal k (first mylist))
            (rest mylist)
        )
        (t
            (cons (first mylist) (removal (rest mylist) k))
        )
    )
)

(defun sorting (mylist)
    (cond 
        ((null mylist)
            nil
        )
        (t
            (cons (minlen mylist) (removal mylist (minlen mylist)))
        )
    )
)


(format t "~a" (sorting '((a b) (a b c d) (a) (a b c d e))))