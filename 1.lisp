;;; P01 (*) Find the last box of a list.

;; My Function
(defun my_last (my_list)
    (if (null my_list)
        nil
        (if (null (rest my_list))
            my_list
            (my_last (rest my_list))
            )
    )
)

(format t "~a~%" (my_last '(a b c d)))

;; Builtin Function
(format t "~a" (last '(a b c d)))