module S6T1 where

seqA :: Integer -> Integer
seqA n  
  | n == 0 = 1
  | n == 1 = 2
  | n == 2 = 3
  | otherwise = let
      helper acc 2 = acc
      helper (a1, a2, a3) n = helper (a2, a3, a3 + a2 - 2 * a1) (n - 1)
      result (_, _, x) = x
    in result $ helper (1, 2, 3)
