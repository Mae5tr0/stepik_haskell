module S5T2 where

evenOnly :: [a] -> [a]
evenOnly = snd . foldr g ([], []) where
  g x (l,r) = (x : r, l)

