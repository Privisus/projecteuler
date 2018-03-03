(defvar sum 2)

; Taking non-recursive way
(let ((k 0) (l 2) (swap 0))
  (loop
    (setf swap k)
    (setf k l)
    (setf l (+ (* 4 k) swap))
    (when (>= l 4000000) (return))
    (setf sum (+ sum l))))

(format t "~d ~%" sum)
