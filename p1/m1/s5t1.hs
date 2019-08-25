module S5T1 where

doubleFact :: Integer -> Integer
doubleFact 0 = 1
doubleFact (-1) = 1
doubleFact n = n * doubleFact (n - 2)


