module S1T3 where

import Control.Applicative

data Triple a = Tr a a a deriving (Eq,Show)

instance Functor Triple where
  fmap f (Tr x y z) = Tr (f x) (f y) (f z)

instance Applicative Triple where
  pure x = Tr x x x  
  (Tr f g h) <*> (Tr a b c) = Tr (f a) (g b) (h c)
