;;; P12 (**) Decode a run-length encoded list.

(defun repeat (q n)
    (cond
        ((equal n 0)
            nil
        )
        (t
            (append q (repeat q (- n 1)))
        )
    )
)

(defun decode (mylist)
    (cond
        ((null mylist)
            nil
        )
        (t
            (append (repeat (last (first mylist)) (first (first mylist))) (decode (rest mylist)))
        )
    )
)

(format t "~a" (decode '((4 a) (6 c) (1 f))))