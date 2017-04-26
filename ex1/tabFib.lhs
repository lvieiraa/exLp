
> import Data.List
> import System.IO






> printStringNTimes 0 = return ()
> printStringNTimes n =
>  do
>   print n  
>   printStringNTimes (n-1)


> tabFib n = fibs!!n

> fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
