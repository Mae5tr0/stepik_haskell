module S4T2 where

--Тип Board и функция nextPositions заданы, реализовывать их не нужно

nextPositionsN :: Board -> Int -> (Board -> Bool) -> [Board]
nextPositionsN b n pred 
 | n < 0      = []
 | n == 0     = filter pred [b]
 | otherwise  = do 
     x <- nextPositions b
     y <- nextPositionsN x (n - 1) pred
     return y
