;;; P25 (*) Generate a random permutation of the elements of a list.

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

(defun rnd-perm (mylist)
    (cond
        ((null mylist)
            nil
        )
        (t
            (setf i (random (length mylist)))
            (cons (element-at mylist i) (rnd-perm (remove-at mylist i)))
        )
    )
)

(format t "~a" (rnd-perm '(a b c d e f g)))