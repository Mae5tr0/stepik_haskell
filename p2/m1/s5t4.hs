module S5T4 where

import Control.Applicative
import S5T1

instance (Functor f, Functor g) => Functor (f |.| g) where
  fmap h (Cmps x) = Cmps $ fmap (fmap h) x

instance (Applicative f, Applicative g) => Applicative (f |.| g) where
  pure = Cmps . pure . pure

unCmps3 :: Functor f => (f |.| g |.| h) a -> f (g (h a))
unCmps3 (Cmps x )= fmap getCmps x

unCmps4 :: (Functor f2, Functor f1) => (f2 |.| f1 |.| g |.| h) a -> f2 (f1 (g (h a)))
unCmps4 (Cmps x) = fmap unCmps3 x

--pure 42 :: ([] |.| [] |.| []) Int
--Cmps {getCmps = [Cmps {getCmps = [[42]]}]}
--unCmps3 (pure 42 :: ([] |.| [] |.| []) Int)
--[[[42]]]
--unCmps3 (pure 42 :: ([] |.| Maybe |.| []) Int)
--[Just [42]]
--unCmps4 (pure 42 :: ([] |.| [] |.| [] |.| []) Int)
--[[[[42]]]]
