module S6T1 where

lastElem :: [a] -> a
lastElem = foldl1 (\s x -> x)
