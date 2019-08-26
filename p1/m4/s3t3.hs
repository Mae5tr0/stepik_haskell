module S3T3 where

data Person = Person { firstName :: String, lastName :: String, age :: Int }

abbrFirstName :: Person -> Person
abbrFirstName p@(Person {firstName = fn}) 
  | length fn > 2 = p { firstName = (take 1 fn ++ ".") }
  | otherwise = p 
