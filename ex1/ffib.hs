fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main = do putStrLn "Enter a number:"
          num <- readLn
          fibs = map fib [0..n]
          mapM' print fibs
