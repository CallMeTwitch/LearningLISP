;;; P05 (*) Reverse a list.

;; My Function
(defun reverso (myList &optional (output ()))
    (if (null myList)
        output
        (reverso (rest myList) (cons (first myList) output))
    )
)

(format t "~a~%" (reverso '(1 2 3)))

;; Builtin Function
(format t "~a~%" (reverse '(1 2 3)))