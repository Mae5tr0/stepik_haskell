module S5T3 where

fibonacci :: Integer -> Integer
fibonacci n | n > 0 = fst (positive (0, 1) n)
            | n < 0 = snd (negative (1, 0) n)
            | otherwise = n


positive acc 0 = acc
positive acc n = positive (snd acc, fst acc + snd acc) (n - 1)

negative acc 0 = acc
negative acc n = negative (snd acc - fst acc, fst acc) (n + 1) 
