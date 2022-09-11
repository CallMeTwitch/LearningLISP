;;; P10 (*) Run-length encoding of a list.

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

(format t "~a" (encode '(a a a a b b c c c)))