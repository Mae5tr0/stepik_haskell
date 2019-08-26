module S4T6 where

import Data.Char
import Control.Monad

data Error = ParsingError | IncompleteDataError | IncorrectDataError String deriving Show
data Person = Person { firstName :: String, lastName :: String, age :: Int } deriving Show

parsePerson :: String -> Either Error Person
parsePerson s = do
  params <- mapM parseKey $ lines s
  firstName <- findKey "firstName" params
  lastName  <- findKey "lastName" params
  strAge <- findKey "age" params
  intAge <- convertAge strAge
  return Person { firstName = firstName, lastName = lastName, age = intAge }

parseKey :: String -> Either Error (String, String)
parseKey str = let (key, value) = break (\x -> x == '=') str in
  if last key /= ' ' || take 2 value /= "= " 
  then Left ParsingError
  else Right (take (length key - 1) key, drop 2 value)

convertAge :: String -> Either Error Int
convertAge age 
  | all isDigit age = Right $ read age
  | otherwise = Left (IncorrectDataError age)

findKey :: String -> [(String, String)] -> Either Error String
findKey key xs = case lookup key xs of 
   (Nothing) -> Left IncompleteDataError
   (Just v) -> Right v
