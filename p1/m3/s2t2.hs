module S2T2 where

filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj p1 p2 xs = filter p xs where
  p x = p1 x || p2 x  

