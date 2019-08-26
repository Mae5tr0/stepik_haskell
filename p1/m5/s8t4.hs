module S8T4 where

numberTree :: Tree () -> Tree Integer
numberTree tree = evalState (stepTree tree) 1

stepTree :: Tree () -> State Integer (Tree Integer)
stepTree (Leaf ()) = do
  n <- get
  modify (+1)
  return (Leaf n)

stepTree (Fork l () r) = do
  l' <- stepTree l
  i <- get
  modify (+1)
  r' <- stepTree r
  return $ Fork l' i r'
