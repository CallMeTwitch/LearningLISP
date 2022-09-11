;;; P23 (**) Extract a given number of randomly selected elements from a list.

(setf *random-state* (make-random-state t))

(defun element-at (mylist k)
    (cond
        ((equal k 0)
            (first mylist)
        )
        (t
            (element-at (rest mylist) (- k 1))
        )
    )
)

(defun remove-at (mylist k)
    (cond 
        ((equal k 0)
            (rest mylist)
        )
        (t
            (cons (first mylist) (remove-at (rest mylist) (- k 1)))
        )
    )
)

(defun rnd-select (mylist n)
    (cond
        ((equal n 0)
            nil
        )
        (t
            (setf i (random (length mylist)))
            (cons (element-at mylist i) (rnd-select (remove-at mylist i) (- n 1)))
        )
    )
)

(format t "~a" (rnd-select '(a b c d) 2))