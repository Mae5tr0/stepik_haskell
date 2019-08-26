module S2T5 where

perms :: [a] -> [[a]]
perms [] = [[]]
perms xs = concatMap id $ helper [] xs where
  helper _ [] = []
  helper prevs (x:xs) = comb x (prevs ++ xs) ++ helper (prevs ++ [x]) xs
  comb x ys = map (\xss -> [x:xss]) $ perms ys   
