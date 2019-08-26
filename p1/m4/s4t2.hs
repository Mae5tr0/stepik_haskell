module S4T2 where

data Coord a = Coord a a

getCenter :: Double -> Coord Int -> Coord Double
getCenter d (Coord x y) = Coord (roundDouble $ fromIntegral x * d + half) (roundDouble $ fromIntegral y * d + half) 
  where    
    half = d / 2
    roundDouble :: Double -> Double
    roundDouble b = (fromIntegral $ round $ b * 1000) / 1000 

getCell :: Double -> Coord Double -> Coord Int
getCell d (Coord x y) = Coord (floor (x / d)) (floor (y / d)) 
