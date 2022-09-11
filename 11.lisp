;;; P11 (*) Modified run-length encoding.

(defun encode (mylist &optional (n 1))
    (cond
        ((null mylist)
            nil
        )
        ((equal (first mylist) (first (rest mylist)))
            (encode (rest mylist) (+ n 1))
        )
        (t
            (append (list (append (list n) (list (first mylist)))) (encode (rest mylist)))
        )
    )
)

(defun modified-encode (encoded)
    (cond
        ((null encoded)
            nil
        )
        ((equal (first (first encoded)) 1)
            (append (last (first encoded)) (modified-encode (rest encoded)))
        )
        (t
            (append (list (first encoded)) (modified-encode (rest encoded)))
        )
    )
)

(format t "~a" (modified-encode (encode '(d a a a a b b c c c d))))