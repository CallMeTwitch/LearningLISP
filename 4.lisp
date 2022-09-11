;;; P04 (*) Find the number of elements of a list.

;; My Function
(defun len (myList &optional (i 0))
    (if (null myList)
        i
        (len (rest myList) (+ i 1))
    )
)

(format t "~a~%" (len '(0 1 2 3 4 5 6)))

;; Builtin Function
(format t "~a~%" (list-length '(0 1 2 3 4 5 6)))