module S6T1 where

newtype Xor = Xor { getXor :: Bool }
  deriving (Eq,Show)

instance Monoid Xor where
  mempty = Xor False
  Xor y `mappend` Xor x = Xor ( x /= y)
