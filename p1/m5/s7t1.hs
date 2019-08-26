module S7T1 where

evalWriter :: Writer w a -> a
evalWriter = fst . runWriter
