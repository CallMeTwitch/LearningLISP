;;; P20 (*) Remove the K'th element from a list.

(defun remove-at (mylist k)
    (cond
        ((null mylist)
            nil
        )
        ((equal k 1)
            (remove-at (rest mylist) (- k 1))
        )
        (t
            (cons (first mylist) (remove-at (rest mylist) (- k 1)))
        )
    )
)

(format t "~a~%" (remove-at '(a b c d) 2))