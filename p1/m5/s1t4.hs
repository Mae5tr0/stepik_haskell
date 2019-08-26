module S1T4 where

instance Functor (Entry k1 k2) where
  fmap f (Entry (k1, k2) v) = Entry (k1, k2) (f v) 

instance Functor (Map k1 k2) where
  fmap f (Map x) = Map $ map (\e -> fmap f e) x
