;;; P24 (*) Lotto: Draw N different random numbers from the set 1..M.


(defun range (a b)
    (cond
        ((equal a b)
            (list a)
        )
        ((< a b)
            (cons a (range (+ a 1) b))
        )
        (t
            (cons a (range (- a 1) b))
        )
    )
)

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

(defun lotto (n m)
    (rnd-select (range 0 m) n)
)

(format t "~a" (lotto 6 49))