;;; P06 (*) Find out whether a list is a palindrome.

(defun isPalindrome (myList)
    (equal myList (reverse myList))
)

(format t "~a~%" (isPalindrome '(1 2 3 2 1)))