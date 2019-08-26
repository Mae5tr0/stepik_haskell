module S1T3 where

oddsOnly :: Integral a => [a] -> [a]
oddsOnly xs = summator [] xs where
  summator acc [] = acc
  summator acc (x:xs)
    | odd x = x : summator acc xs
    | otherwise = summator acc xs
