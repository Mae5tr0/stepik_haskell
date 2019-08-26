module S3T2 where

data Person = Person { firstName :: String, lastName :: String, age :: Int }

updateLastName :: Person -> Person -> Person
updateLastName person person' = person' { lastName = (lastName person) }
