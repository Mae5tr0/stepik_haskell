module S5T2 where

data Nat = Zero | Suc Nat

fromNat :: Nat -> Integer
fromNat Zero = 0
fromNat (Suc n) = fromNat n + 1
         
fromIntegerToNat :: Integer -> Nat
fromIntegerToNat 0 = Zero
fromIntegerToNat x = Suc $ fromIntegerToNat $ x - 1

add :: Nat -> Nat -> Nat
add x y = fromIntegerToNat $ fromNat x + fromNat y 

mul :: Nat -> Nat -> Nat
mul x y = fromIntegerToNat $ fromNat x * fromNat y

fac :: Nat -> Nat
fac x = fromIntegerToNat $ product [1..(fromNat x)]
