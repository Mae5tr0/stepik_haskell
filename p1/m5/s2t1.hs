module S2T1 where

toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f msg = (Log [msg]) . f

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers x f g = Log (msg1 ++ msg2) r2 where
  (Log msg1 r1) = f x
  (Log msg2 r2) = g r1
