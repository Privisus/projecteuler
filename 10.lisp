(defvar prime 0)
(defvar n 15)
(defvar sum 41)

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
  (if (> n 2000000) 
      (return))
  (if (not (fast_filtered n)) 
      (if (is_prime n) 
	  (progn
	    (setf prime n)
	    (setf sum (+ sum prime)))))
  (setf n (+ n 2)))

(format t "~d ~%" sum)
