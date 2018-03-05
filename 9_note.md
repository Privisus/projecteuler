Let's make it simpler for the computer to process

We know that:  
a^2 + b^2 = c^2  

a + b + c = 1000, a>0, b>0, c>0  
c = 1000 - a - b, a>0, b>0, c>0

Square the second equation:  
a^2 + b^2 + c^2 + 2(ab+bc+ac) = 10^6

Replace c^2 with first equation:  
2(a^2 + b^2) + 2(ab+bc+ac) = 10^6

Divide both sides by 2:  
a^2 + b^2 + ab + bc + ac = 5 * 10^5

Replace c with third equation:  
a^2 + b^2 + ab + 1000b - ab - b^2 + 1000a - a^2 - ab = 5 * 10^5  

Simplify:  
1000(a+b) - ab = 5 * 10^5

Solve over natural numbers, we found that one number is 200, and the other is
375, so c = 425.

abc = 200 * 375 * 425 = 31875000

SOLUTION: 31875000

