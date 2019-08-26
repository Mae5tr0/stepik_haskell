module S6T2 where

revRange :: (Char,Char) -> [Char]
revRange (start, end) = unfoldr g end where
  g x 
    | x < start = Nothing
    | otherwise = Just (x, pred x)
