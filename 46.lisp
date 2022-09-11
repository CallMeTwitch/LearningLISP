;;; P46 (**) Truth tables for logical expressions.

(defun table (a b f)
    (dolist (ap (list t nil))
        (dolist (bp (list t nil))
            (format t "~a ~a ~a~%" ap bp (eval (subst ap a (subst bp b f))))
        )
    )
)

(table 'a 'b '(not (or a b)))