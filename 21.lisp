;;; P21 (*) Insert an element at a given position into a list.

(defun insert (n mylist i)
    (cond
        ((null mylist)
            nil
        )
        ((equal i 1)
            (cons n (insert n mylist (- i 1)))
        )
        (t
            (cons (car mylist) (insert n (cdr mylist) (- i 1)))
        )
    )
)

(format t "~a" (insert 'alpha '(a b c d) 2))