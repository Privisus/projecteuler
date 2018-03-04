(defvar k 600851475143)
(defvar max_factor (floor (sqrt k)))
(defvar last_factor 1)
(defvar current_factor 3)

; You don't need to divide the number by 2 because it is odd

(loop
  ; Max factor should be around sqrt k, if it has already passed that, that's
  ; the prime
  (if (> last_factor max_factor) 
      (return))
  (if (= (rem k current_factor) 0) 
      (progn 
      	; Reduce k if it is divisble by current factor
	(setf k (/ k current_factor))
	(setf last_factor current_factor)
	(loop 
		(if (= (rem k current_factor) 0) 
		    ; Further reduce k
		    (setf k (/ k current_factor)) 
		    (return)))
	; Update max factor after reducing k
	(setf max_factor (floor (sqrt k)))))
  (setf current_factor (+ current_factor 2)))

(format t "~d ~%" k)
