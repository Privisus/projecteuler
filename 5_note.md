The solution I attached takes a bruteforce approach to this problem. 
But it doesn't have to! We can do this without even doing any 
"programming" stuff.

Let's list the number first:

1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20

To clear most numbers first, notice that factor of 1, 2, 3, ..., 10 
are inside of a number between 11~20. For example, `7` is in 14, as
in 2 * `7`. Since we're concerned with the minimum number, We 
shouldn't multiply these factors again (this is why factorial 
won't do it). So we're left with:

11 12 13 14 15 16 17 18 19 20

Let's break each number into each factors and pick each number from the factor
with the highest power:

11 -> (11)  
12 -> 2^2 * 3  
13 -> (13)  
14 -> 2 * (7)  
15 -> 3 * (5)  
16 -> (2^4)  
17 -> (17)  
18 -> 2 * (3^2)  
19 -> (19)
20 -> 2^2 * 5

That is 11 * 13 * 7 * 5 * 2^4 * 17 * 3^2 * 19 = 232792560

SOLUTION: 232792560
