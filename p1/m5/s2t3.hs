module S2T3 where

bindLog :: Log a -> (a -> Log b) -> Log b
bindLog (Log msg v) f = Log (msg ++ msg2) r where
  (Log msg2 r) = f v
