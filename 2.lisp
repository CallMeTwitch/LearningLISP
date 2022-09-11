;;; P02 (*) Find the last but one box of a list.

(defun penultimate (my_list)
    (defvar reversed (reverse my_list))
    (cadr reversed)    
)

(format t "~a" (penultimate '(a b c d)))