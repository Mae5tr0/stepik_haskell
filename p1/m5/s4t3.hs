module S4T3 where

pythagoreanTriple :: Int -> [(Int, Int, Int)]
pythagoreanTriple x 
 | x <= 0    = []
 | otherwise = do
    a <- [1,2..x] 
    b <- [1,2..x]
    c <- [1,2..x]
    True <- return (a < b)
    True <- return (a^2 + b^2 == c^2)
    return (a,b,c)
