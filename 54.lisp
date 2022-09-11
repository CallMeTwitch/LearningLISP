;;; P54A (*) Check whether a given expression represents a binary tree

(defun is-bin-tree (root)
    (cond
        ((null root)
            t
        )
        ((equal (length root) 3)
            (and (is-bin-tree (second root)) (is-bin-tree (third root)))
        )
        (t
            nil
        )
    )
)

(format t "~a" (is-bin-tree '(a (b nil nil) (c nil (d)))))