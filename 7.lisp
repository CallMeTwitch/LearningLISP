;;; P07 (**) Flatten a nested list structure.

(defun flatten (mylist)
    ;; If Empty Return Nothing
    (if (null mylist)
        nil
        (if (atom (first mylist)) 
            ;; If First Item not List: Flatten Rest and Append
            (cons (first mylist) (flatten (rest mylist)))
            ;; Else Flatten Both and Append
            (append (flatten (first mylist)) (flatten (rest mylist)))
        )
    )
)

(format t "~a~%" (flatten '(a (b (c d) e))))