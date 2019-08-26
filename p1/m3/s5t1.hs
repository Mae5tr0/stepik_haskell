module S5T1 where

meanList :: [Double] -> Double
meanList = avg . foldr (\x (p, c) -> (p + x, c + 1)) (0,0) where
 avg (p,c) = p / c

