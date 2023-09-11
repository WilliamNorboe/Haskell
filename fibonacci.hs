fibToN i n
 | i == n = return ()
 | otherwise = do 
    print (fib i)
    fibToN (i+1) n
 
fib n
 | n == 0 = 0
 | n == 1 = 1
 | otherwise = fib (n-1) + fib (n-2)
 
main = do
  fibToN 1 20
