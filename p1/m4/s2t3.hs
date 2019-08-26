module S2T3 where

data Result' = Fail' Int | Success'

instance Show Result' where
  show Success'  = "Success"
  show (Fail' n) = "Fail: " ++ show n

doSomeWork' :: SomeData -> Result'
doSomeWork' d = 
  case doSomeWork d of
    (Success,_)  -> Success' 
    (Fail,n) -> Fail' n 
