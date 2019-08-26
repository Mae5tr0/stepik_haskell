module S3T1 where

instance Functor SomeType where
  fmap f x = x >>= (\a -> return $ f a)
