module S1T6 where

groupElems :: Eq a => [a] -> [[a]]
groupElems [] = []
groupElems (x:xs) = group [] [x] x xs where
  group :: Eq a => [[a]] -> [a] -> a -> [a] -> [[a]] 
  group acc currentGroup currentGroupX [] = acc ++ [currentGroup]
  group acc currentGroup currentGroupX (x:xs) = 
    if x == currentGroupX 
      then group acc (currentGroup ++ [x]) x xs 
      else group (acc ++ [currentGroup]) [x] x xs
