module S5T1 where

main' :: IO ()
main' = do
  name <- getName
  putStrLn $ "Hi, " ++ name ++ "!"
 where
  getName = do 
    putStrLn "What is your name?"
    putStr "Name: "
    input <- getLine 
    if length input == 0 then getName else return input
