module S4T1 where

data Coord a = Coord a a

distance :: Coord Double -> Coord Double -> Double
distance (Coord x y) (Coord x' y') = sqrt ((x - x')^2 + (y - y')^2)

manhDistance :: Coord Int -> Coord Int -> Int
manhDistance (Coord x y) (Coord x' y') = abs (x - x') + abs (y - y')
