Although I didn't implement it, note that you can skip the next 12 numbers if you found the digit 0 because the product is always 0.

The optimization in the file attached takes a different approach. 
The process looked like this (for simplicity, let's take 5 digits):

n <- 12025678

First iteration
-----
12025678 -> "12025678"  

Pick 5 from pos 0 -> "12025"  
Is there a "0"? -> Yes -> 0  

0 passed to list maker, becomes (0).

product of 0 is 0.

Second iteration
-----
12025678 -> "12025678"

Pick 5 from pos 1 -> "20256"  
Is there a "0"? -> Yes -> 0  
Same process.

Fourth/Final interation
-----
12025678 -> "12025678"

Pick 5 from pos 3 -> "25678"  
Is there a "0"? -> No -> 25678  

25678 passed to list maker, becomes (2 5 6 7 8).

product of (2 5 6 7 8) is 3360

For each iteration, it stores the maximum value in `max_sum` (I know, not
technically correct to call it `max_sum`, but I'm not too bothered by it to
change the name.) 

Finally, once it finishes, print `max_sum`.

SOLUTION: 23514624000 
