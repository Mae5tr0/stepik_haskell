module S5T3 where 

evenOnly :: [a] -> [a]
evenOnly = snd . foldr g ([], []) where
  g x p = (x : (snd p), fst p)
