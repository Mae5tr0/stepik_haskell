module S6T3 where

integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = integral where
    n = 1000
    h = (b - a) / n
    integral = h * ((f a + f b) / 2 + sum 0 (a + h) 1)
    sum acc x i
      | i >= n    = acc
      | otherwise = sum (f x + acc) (x + h) (i + 1) 
