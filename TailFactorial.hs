myfact n
 | (n == 0) || (n==1) = 1
 | otherwise = n * myfact (n-1)

factToN i n
 | i == n = return ()
 | otherwise = do
    print (myfact i)
    factToN (i+1) n

factTail n r1
 | (n == 0) || (n == 1) = r1
 | otherwise = factTail (n-1) (n*r1)
