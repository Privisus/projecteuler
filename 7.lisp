(defvar prime_nth 6)
(defvar prime 0)
(defvar n 15)

; Start from 15
; Loop from 15 to infinity until prime_nth reaches 10001

(defun fast_filtered (k)
  (or (= (rem k 3) 0)
      (= (rem k 5) 0)
      (= (rem k 7) 0)
      (= (rem k 11) 0)))

(defun is_prime (k)
  (loop for factor from 12 to (floor (sqrt k)) do
	(if (= (rem k factor) 0) 
	    (return-from is_prime Nil)))
  (return-from is_prime T))

(loop
  (if (= prime_nth 10001) 
      (return))
  (if (not (fast_filtered n)) 
      (if (is_prime n) 
	  (progn
	    (setf prime n)
	    (setf prime_nth (+ prime_nth 1)))))
  (setf n (+ n 2)))

(format t "~d ~%" prime)
