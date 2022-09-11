;;; P03 (*) Find the K'th element of a list.


;; My Function
(defun element-at (myList k &optional (i 0))
    (if (= k i)
        (car myList)
        (element-at (rest myList) k (+ i 1))
    )
)

(format t "~a~%" (element-at '(a b c d e f g) 4))

;; Builtin Function
(format t "~a~%" (nth 4 '(a b c d e f g)))