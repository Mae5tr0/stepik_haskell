module S3T4 where

change :: (Ord a, Num a) => a -> [[a]]
change 0 = [[]]
change n = concatMap id $ [ map (\y -> x : y) (change (n - x)) | x <- coins, x <= n ]
