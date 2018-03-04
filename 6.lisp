; O(n) and O(1) approach for #6.

; O(n) for the sum function
(defun sum (a b difference)
  (let ((sum_result 0))
       (loop for k from a to b by difference do
	     (setf sum_result (+ sum_result k)))
       (return-from sum sum_result)))

; O(1) for the sum function
(defun sumf (a b difference)
  (return-from sumf (* (/ (+ (/ (- b a) difference) 1) 2) (+ a b))))

; O(n) for the power sum function
(defun squaredsum (a b)
  (let ((sum_result 0))
       (loop for k from a to b do
	     (setf sum_result (+ sum_result (expt k 2))))
       (return-from squaredsum sum_result)))

; O(1) for the power sum function
(defun squaredsumf (b)
  (return-from squaredsumf (/ (* b (+ b 1) (+ (* b 2) 1)) 6)))

(print (-  (expt (sumf 1 100 1) 2) (squaredsumf 100)))
