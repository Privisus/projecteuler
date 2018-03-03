(defvar sum 0)

(loop for n from 1 to 999 do
      (if (or (= 0 (rem n 3)) (= 0 (rem n 5))) (setf sum (+ sum n))))

(format t "~d ~%" sum)
