

> import System.IO
> import Numeric (showHex, showIntAtBase)
> import Data.Char (intToDigit)



> tabFib 0 = return ()
> tabFib n =
>  do
>   putStr (show n)
>   putStr (show ' ')
>   print  (tabFib' n)
>   tabFib (n-1)




> ret :: Int -> Int
> ret n = ret_n
>           where
>               ret_n = tabFib' n

> tabFib' n = fibs!!n

> fibs = 0 : 1 : zipWith (+) fibs (tail fibs)


> setR :: Int -> [Int]
> setR n = [1..n]

 tabFib n = map tabFib' (setR n)
