square n = squareh 1 n 0
squareh::Integer->Integer->Integer->Integer
squareh i n s
 | i == n+1 = s
 | otherwise = squareh (i+1) n (s+(i*i))

cube n = cubeh 1 n 0
cubeh::Integer->Integer->Integer->Integer
cubeh i n s
 | i == n+1 = s
 | otherwise = cubeh (i+1) n (s+(i*i*i))
