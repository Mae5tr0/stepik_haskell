module S3T1 where

import Text.Parsec
import Text.Parsec.Char

getList :: Parsec String u [String]
getList = sepBy1 (many1 digit) (char ';')
