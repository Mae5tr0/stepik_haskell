module S4T1 where

concatList :: [[a]] -> [a]
concatList = foldr (++) []
