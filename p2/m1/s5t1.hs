{-# LANGUAGE TypeOperators #-}
module S5T1 where

infixr 9 |.|
newtype (|.|) f g a = Cmps {getCmps :: f (g a)} deriving Show


type A   = ((,) Integer |.| (,) Char) Bool
type B t = ((,,) Bool (t -> t) |.| Either String) Int
type C   = (|.|) ((->) Bool) ((->) Integer) Integer

a :: A
a = Cmps (10, ('A', False))

b :: B t
b = Cmps (False, id, Right 4)

c :: C
c  = Cmps $ \x y -> 10
