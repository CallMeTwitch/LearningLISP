;;; P16 (**) Drop every N'th element from a list.

(defun drop (mylist n &optional (i 1))
    (cond 
        ((null mylist)
            nil
        )
        ((equal (mod i n) 0)
            (drop (rest mylist) n (+ i 1))
        )
        (t
            (cons (first mylist) (drop (rest mylist) n (+ i 1)))
        )
    )
)

(format t "~a" (drop '(a b c d e f g h i j k) 3))