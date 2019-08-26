module S5T2 where

import Data.List
import Control.Monad

main' :: IO ()
main' = do
  putStr "Substring: "
  str <- getLine
  if null str then putStrLn "Canceled" else removeFiles str
  
removeFiles :: String -> IO ()
removeFiles str = do
  files <- getDirectoryContents "."
  mapM_ removeSingleFile $ filterFiles str files
  
removeSingleFile :: String -> IO ()
removeSingleFile file = do
  removeFile file
  putStrLn $ "Removing file: " ++ file

filterFiles :: String -> [FilePath] -> [FilePath]
filterFiles str = filter (\file -> isInfixOf str file)
