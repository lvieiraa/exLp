> units, teens, tens :: [String]
> units = ["zero","um","dois","tres","quatro","cinco","seis","sete","oito","nove"]
> teens = ["dez","onze","doze","treze","quatorze","quinze","dezeseis","dezessete","dezoito", "dezenove"]
> tens = ["vinte","trinta","quarenta","cinquenta","sessenta", "setenta","oitenta","noventa","cem"]
> hundreds = ["cento","duzentos","trezentos","quatrocentos","quinhentos","seiscentos","setecentos","oitocentos","novecentos"]


> convert1 :: Int -> String
> convert1 n = units!!n

> digits2 :: Int -> (Int, Int)
> digits2 n = (n `div` 10, n `mod` 10)

> digits3 :: Int -> (Int, Int, Int)
> digits3 n = (n `div` 100, (n `mod` 100) `div` 10 , n `mod` 10)

> digits4 :: Int -> (Int, Int, Int)
> digits4 n = (n `div` 1000, (n `mod` 1000) `div` 100, (n `mod` 100))


> convert2 :: Int -> String
> convert2 = combine2 . digits2

> convertMil :: Int -> String
> convertMil = combineMil . digits2

> convert3 :: Int -> String
> convert3 = combine3 . digits3

> convert4 :: Int -> String
> convert4 = combine4 . digits4

> combine2 :: (Int,Int) -> String
> combine2 (t,u)
>   | u == 1  && t == 0        = units!!1 ++ " reais."
>   | t==0                     = units!!u  ++ " reais."
>   | t==1                     = teens!!u  ++ " reais."
>   | 2<=t && u==0             = tens!!(t-2)  ++ " reais."
>   | 2<=t && u/=0             = tens!!(t-2) ++ " e " ++ units!!u ++ " reais. "

> combineMil :: (Int,Int) -> String
> combineMil (t,u)
>   | u== 1         = units!!1 ++ " mil, "
>   | t==0          = units!!u  ++ " mil, "
>   | t==1          = teens!!u  ++ " mil, "
>   | 2<=t && u==0  = tens!!(t-2)  ++ " mil, "
>   | 2<=t && u/=0  = tens!!(t-2) ++ " e " ++ units!!u ++ " mil, "



> combine3 :: (Int,Int,Int) -> String
> combine3 (t,u,z)
>   | t==0          = units!!u  ++ " reais"
>   | t==1          = teens!!u  ++ " reais"
>   | 2<=t && u==0  = tens!!(t-2)  ++ " reais"
>   | 2<=t && u/=0  = tens!!(t-2) ++ " e " ++ units!!u ++ " reais"

> combine4 :: (Int,Int,Int) -> String
> combine4 (t,u,z)
>   | t == 0 && u == 0                 = convert2(z)
>   | t == 0 && u == 1 && z == 0       = "Cem "
>   | t == 0 && u >= 1 && z >  0       = hundreds!!(u-1) ++" e " ++ convert2(z)
>   | t >= 1 && u >= 1 && z >  0       = convertMil(t) ++ hundreds!!(u-1) ++" e " ++ convert2(z)
>   | 2 <=t && u /= 0                  = tens!!(t-2) ++ " e " ++ units!!u ++ " reais"
