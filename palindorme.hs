myReverse [] r = r
myReverse (x:xs) r = myReverse xs ([x] ++ r)


sameString [] [] = True
sameString [] l = False
sameString l [] = False
sameString (x1:xs1) (x2:xs2)
 | x1 /= x2 = False
 | otherwise = sameString xs1 xs2

palindrome s = sameString s (myReverse s [])
