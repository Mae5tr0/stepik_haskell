module S3T1 where

fibStream :: [Integer]
fibStream = fib 0 1 where
  fib x y = x : fib y (x + y)
