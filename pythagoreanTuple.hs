funcZ x y z
 | z == 101 = return()
 | otherwise = do
    funcY x y z
    funcZ x y (z+1)

funcY x y z
 | y > z = return()
 | otherwise = do
    funcX x y z
    funcY x (y+1) z
    
funcX x y z
 | x > y = return()
 | (x*x) + (y*y) == (z*z) = do
    printPair x y z
    funcX (x+1) y z
 | otherwise = funcX (x+1) y z
    
printPair x y z = do
 putStrLn ("(" ++ show x ++ ", " ++ show y ++ ", " ++ show z ++ ")")
