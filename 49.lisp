;;; P49 (**) Gray code.

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

(defun add (mylist k)
    (cond
        ((null mylist)
            nil
        )
        (t
            (cons (+ k (first mylist)) (add (rest mylist) k))
        )
    )
)

(defun to-binary (mylist)
    (cond
        ((null mylist)
            nil
        )
        (t
            (cons (write-to-string (first mylist) :base 2) (to-binary (rest mylist)))
        )
    )
)

(defun gray (n)
    (setf output '(0))
    
    (loop for x in (range 0 (- n 1))
        do (setf output (append output (add (reverse output) (expt 2 x))))
    )
    (to-binary output)
)

(format t "~a~%" (gray 3))