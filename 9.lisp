(defun phy () 
  (loop for a from 1 to 1000 do
      (loop for b from 1 to 1000 do
	    (if (= (- (* 1000 (+ a b)) (* a b)) 500000)
	        (return-from phy (* a b (- 1000 a b)))))))

(format t "~d" (phy))
