module S2T5 where

data Bit = Zero | One
data Sign = Minus | Plus
data Z = Z Sign [Bit]

add :: Z -> Z -> Z
add x y = toZ $ fromZ x + fromZ y

mul :: Z -> Z -> Z
mul x y = toZ $ fromZ x * fromZ y 

fromZ :: Z -> Int
fromZ (Z Plus xs) = fromBitList xs 
fromZ (Z Minus xs) = 0 - fromBitList xs

toZ :: Int -> Z
toZ n 
 | n < 0 = Z Minus (toBitList (abs n))
 | otherwise = Z Plus (toBitList n)

fromBitList :: [Bit] -> Int
fromBitList = snd . foldl (\(pos,acc) x -> (pos + 1, acc + toInt pos x)) (0,0) where
  toInt _ (Zero) = 0
  toInt pos (One) = 2^pos

toBitList :: Int -> [Bit]
toBitList 0 = []
toBitList n  
    | n < 2 = [toBit n]
    | otherwise = let (d, m) = divide n in
                  (toBit m):toBitList d 

toBit 0 = Zero
toBit 1 = One
divide x = (x `div` 2, x `mod` 2) 
