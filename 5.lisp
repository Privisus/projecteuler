(defvar k 1)

; Bruteforce way to find the smallest number that can divide 1~20. May produce
; different computation time in different computers.

(defun divisible (k)
  (loop for divisor from 1 to 20 do
	(if (not (= (rem k divisor) 0)) (return-from divisible ())))
  (return-from divisible T))

(loop 
  (if (divisible k) 
      (return)  
      (setf k (+ k 1)))
  )

(format t "~d ~%" k)
