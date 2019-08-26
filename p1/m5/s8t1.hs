module S8T1 where

readerToState :: Reader r a -> State r a
readerToState m = state (\st -> (runReader m st, st))
