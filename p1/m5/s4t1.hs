module S4T1 where

-- data Token = Number Int | Plus | Minus | LeftBrace | RightBrace     
--     deriving (Eq, Show)
-- Тип Token уже объявлен, его писать не нужно

asToken :: String -> Maybe Token
asToken x  
 | all isDigit x = Just $ Number $ read x
 | x == "+" = Just Plus
 | x == "-" = Just Minus
 | x == "(" = Just LeftBrace
 | x == ")" = Just RightBrace 
 | otherwise = Nothing

tokenize :: String -> Maybe [Token]
tokenize = mapM asToken . words
