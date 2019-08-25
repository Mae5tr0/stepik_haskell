module S6T2 where

sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = (sum $ abs x, count $ abs x) where
   sum x
    | x == 0    = 0
    | otherwise = sum (quot x 10) + mod x 10
   count x 
    | x <= 10    = 1
    | otherwise = count (quot x 10) + 1 
