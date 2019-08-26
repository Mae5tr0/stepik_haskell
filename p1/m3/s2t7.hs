module S2T7 where

max3 :: Ord a => [a] -> [a] -> [a] -> [a]
max3 [] [] [] = []   
max3 [x] [y] [z] = [max z $ max x y]
max3 (x:xs) (y:ys) (z:zs) = (max3 [x] [y] [z]) ++ max3 xs ys zs
