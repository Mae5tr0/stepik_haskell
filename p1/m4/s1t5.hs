module S1T5 where

processData :: SomeData -> String
processData x =  
  case doSomeWork x of
    (Success,_)  -> "Success"
    (Fail,c) -> "Fail: " ++ show c 
