module S7T2 where

purchase :: String -> Integer -> Shopping
purchase item cost = writer ((), Sum cost)

total :: Shopping -> Integer
total = getSum . execWriter
