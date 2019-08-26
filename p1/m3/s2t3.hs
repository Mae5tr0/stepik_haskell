module S2T3 where

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort [a] = [a]
qsort (x:xs) = qsort lower ++ [x] ++ qsort more where
  lower = filter (<= x) xs
  more  = filter (> x) xs 
