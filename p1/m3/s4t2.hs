module S4T2 where

lengthList :: [a] -> Int
lengthList = foldr (\_ s -> 1 + s) 0
