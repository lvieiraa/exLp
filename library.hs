import Data.List
import System.IO

-- Built in math functions

piVal = pi
ePow9 = exp 9
logOf9 = log 9
maxInt = maxBound :: Int
minInt = minBound :: Int


-- Double
bigFloat = 3.99999999999 + 0.00000000005

-- Bool True False
-- Char
-- Touple

always5 :: Int
always5 = 5

--sums
sumOfNums = sum [1..10]


num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

--lot of math operators (sin, cos, asin, tan, acos, sinh ...)

--lists
primeNumbers = [3,5,7,11]
morePrimes = [13, 17,19,23,29]
favNums = 2 : 7 : 21 : 66 : []
morePrimes2 = 2 : morePrimes
lenPrime = length morePrimes2
revPrime = reverse morePrimes2

--index
secondPrime = morePrimes2 !! 1

listTimes2 = [x * 2 | x <- [1..10], x * 3 <= 50]
listTimes3 = [x * 3 | x <- [1..100], x * 3 <= 50]

-- Calculate Mods for a range
divisBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

--zipWith zipa lists
sumOfLists = zipWith (+) [1..10] [11..20]
subOfLists = zipWith (-) [1..10] [11..20]

-- restrict lists
listerBigThen5 = filter (>5) primeNumbers

--while
evensUpTo20 = takeWhile (<= 20000) [1,2..]

--operate a list foldl = left to right foldr = right to left

multOfList = foldr (*) 1 [2,3,4]

--pow3List

pow3List = [3^n | n <- [1..10]]

--multTable multiple two lists embers to menber

multTable = [[x * y | y <- [1..10]] | x <- [1..10]]

--touples

randTouple = (1, "Random Touple")

bobSmith = ("Bob Smith",52)

bobsName = fst bobSmith

bobsAge = snd bobSmith

--Zip

names = ["Bob","Mary","John","Tom,","Tiao"]

age = [12,21,54,2,88]


-- Create function
getTriple x = x * 3

main = do
  putStrLn "What's your name"
  name <- getLine
  putStrLn ("Hello " ++ name)


addMe :: Int -> Int -> Int

--Create function - funcName param1 param2 = operations (returned value)
--just work with Int
addMe x y = x + y

--receive any data type
sumMe x y = x + y


addTuples :: (Int, Int) -> (Int, Int) -> (Int,Int)

addTuples (x, y) (x2, y2) = (x + x2 , y + y2)


whatAge :: Int -> String

whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're adult"
whatAge x = "Nothing"



factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

--fold apply a operation for each item from the list

pow4List = [4^n | n <- [1..10]]
