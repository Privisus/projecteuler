(defvar current_max_palindrome 0)

(defun is_palindrome (digits)
  "Check whether the number is palindrome"
  (let ((number_string (write-to-string digits)))
       (string= number_string (reverse number_string))))

(loop for a from 999 downto 900 do
      (loop for b from a downto 900 do
	    (when (is_palindrome (* a b))
	          (if (> (* a b) current_max_palindrome) 
		      (setf current_max_palindrome (* a b))))))

(format t "~d ~%" current_max_palindrome)
