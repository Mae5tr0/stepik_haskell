module S2T3 where

import S1T1

-- getArr2 (Arr2 (\x y z -> x+y-z) <*> Arr2 (*)) 2 3
instance Applicative (Arr2 e1 e2) where
  pure x = Arr2 (\e1 e2 -> x)
  (<*>) (Arr2 g) (Arr2 h) = Arr2 (\e1 e2 -> g e1 e2 $ h e1 e2)

-- getArr3 (Arr3 (\x y z w -> x+y+z-w) <*> Arr3 (\x y z -> x*y*z)) 2 3 4
instance Applicative (Arr3 e1 e2 e3) where
  pure x = Arr3 (\e1 e2 e3 -> x)
  (<*>) (Arr3 g) (Arr3 h) = Arr3 (\e1 e2 e3 -> g e1 e2 e3 $ h e1 e2 e3) 
