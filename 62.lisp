;;; P62 (*) Collect the internal nodes of a binary tree in a list

(defun collect (root)
    (cond
        ((null (second root))
            (if (null (third root))
                (list (first root))
                (cons (first root) (collect (third root)))
            )
        )
        ((null (third root))
            (cons (first root) (collect (second root)))
        )
        (t
            (cons (first root) (append (collect (second root)) (collect (third root))))
        )
    )
)
(format t "~a" (collect '(1 (2 nil (3 nil nil)) (4 (5 nil nil) nil))))