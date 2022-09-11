;;; P61 (*) Count the leaves of a binary tree

(defun count-leaves (root)
    (cond
        ((null (second root))
            (if (null (third root))
                2
                (+ 1 (count-leaves (third root)))
            )
        )
        ((null (third root))
            (+ 1 (count-leaves (second root)))
        )
        (t
            (+ (count-leaves (second root)) (count-leaves (third root)))
        )
    )
)

(format t "~a" (count-leaves '(1 (2 nil (3 nil nil)) (4 (5 nil nil) nil))))