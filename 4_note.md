I got lucky because I tried the palindrome from 999~900 multiplication and got
the result pretty quickly.

Nothing much to say here, If we do a rough calculation, it needs
about 5050 steps to arrive at the solution. 

Used write-to-string function to turn the number into string, so it makes
comparing the number easier. Just imagine if you can't use any string and
reverse function, you would have to do something like:

ABCDEF -> 100000A + 10000B + 1000C + 100D + 10E + F
FEDCBA -> 100000F + 10000E + 1000D + 100C + 10B + A

ABCDEF = FEDCBA
99999A + 9990B + 900C - 900D - 9990E - 99999F = 0

Or something like 1000000 - 1000(K-N) + KN = AB, etc.

You can do this type of problem with pencil and paper, but I
personally tackle those quicker if I don't start with pencil and paper (unless
I got really stuck).

SOLUTION: 906609
