module S8T3 where

fibStep :: State (Integer, Integer) ()
fibStep = do
  s <- get
  put (snd s, snd s + fst s)
  return ()

execStateN :: Int -> State s a -> s -> s
execStateN n m = execState $ sequence $ replicate n m
