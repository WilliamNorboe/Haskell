primeLoop i n x
 | i == n = True
 | (x `mod` i) == 0 = False
 | otherwise = primeLoop (i+1) n x


isPrime:: Int -> Bool
isPrime x
 | (x == 0) || (x == 1) = True
 | otherwise = primeLoop 2 ((isqrt x)+1) x

primePrint i n
 | i == (n+1) = return ()
 | (isPrime(i)) = do
    print i
    primePrint (i+1) n
 | otherwise = primePrint (i+1) n
