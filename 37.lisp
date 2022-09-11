;;; P37 (**) Calculate Euler's totient function phi(m) (improved).

(defun prime-factors (n &optional (i 2) (k 0))
    (cond
        ((equal n 1)
            (list (list i k))
        )
        ((equal (mod n i) 0)
            (prime-factors (/ n i) i (+ k 1))
        )
        ((equal k 0)
            (prime-factors n (+ i 1))
        )
        (t
            (cons (list i k) (prime-factors n (+ i 1)))
        )
    )
)

(defun phi (fac)
    (cond
        ((null fac)
            1
        )
        (t
            (setf p (first (first fac)))
            (setf m (second (first fac)))
            (* (expt p (- m 1)) (- p 1) (phi (rest fac)))
        )
    )
)

(format t "~a" (phi (prime-factors 1234)))