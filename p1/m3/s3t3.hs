module S3T3 where

-- data Odd = Odd Integer deriving (Eq,Show)
-- не убирайте комментарий с предыдущей строки
-- определение Odd уже присутствует в вызывающей программе
instance Enum Odd where
  succ (Odd x) = Odd (x + 2)
  pred (Odd x) = Odd (x - 2)
  toEnum n = Odd $ toInteger n
  fromEnum (Odd x) = fromIntegral x

  enumFrom (Odd x) = map Odd [x,(x+2)..] 
  enumFromThen (Odd x) (Odd y) = map Odd [x,y..] 
  enumFromTo (Odd x) (Odd lim) = map Odd [x,(x+2)..lim] 
  enumFromThenTo (Odd x) (Odd y) (Odd lim) = map Odd [x,y..lim]
