module S2T4 where

execLoggersList :: a -> [a -> Log a] -> Log a
execLoggersList x = foldl (>>=) (return x)
