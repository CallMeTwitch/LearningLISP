;;; P26 (**) Generate the combinations of K distinct objects chosen from the N elements of a list

(defun combinations (mylist n &optional (k nil))
    (cond
        ((equal (length k) n)
            (list k)
        )
        ((null mylist)
            nil
        )
        ((null k)
            (append (combinations (rest mylist) n (list (car mylist))) (combinations (rest mylist) n k))
        )
        (t
            (append (combinations (rest mylist) n (append k (list (car mylist)))) (combinations (rest mylist) n k))
        )
    )
)

(format t "~a" (combinations '(a b c d e f) 3))