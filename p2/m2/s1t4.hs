{-# LANGUAGE TypeOperators #-}
module S1T4 where

import Data.Foldable

import Control.Applicative


infixr 9 |.|
newtype (|.|) f g a = Cmps { getCmps :: f (g a) }  deriving (Eq,Show) 

instance (Functor f, Functor g) => Functor (f |.| g) where
  fmap h (Cmps x) = Cmps $ fmap (fmap h) x



instance Foldable (f |.| g) where
  foldMap f cont = fold (fmap f cont) 


                

-- maximum $ Cmps [Nothing, Just 2, Just 3]
-- 3
-- length $ Cmps [[1,2], [], [3,4,5,6,7]]
-- 7
