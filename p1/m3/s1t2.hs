module S1T2 where

nTimes:: a -> Int -> [a]
nTimes a n = times [] n where
 times acc 0 = acc
 times acc b = a : times acc (b - 1)
