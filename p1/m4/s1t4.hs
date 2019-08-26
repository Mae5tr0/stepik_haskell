module S1T4 where

cmp :: LogLevel -> LogLevel -> Ordering
cmp Error Error = EQ 
cmp Info Info = EQ
cmp Warning Warning = EQ
cmp Error _ = GT
cmp _ Error = LT
cmp Info _ = LT
cmp _ Info = GT
