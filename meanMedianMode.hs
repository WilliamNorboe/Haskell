meanh [] s len = s/len
meanh (x:xs) s len = meanh xs (s+x) (len+1)
mean l = meanh l 0 0

medianh l
 | even(length l) = ((l !! middle) + (l !! (middle-1)))/2
 | otherwise = l !! middle
  where middle = length l `div` 2
median l = medianh (quicksort l)

modeh [] curmax l2 = l2
modeh (x:xs) curmax l2
 | r > curmax = modeh xs r [x]
 | r == curmax = modeh xs curmax (x:l2)
 | otherwise = modeh xs curmax l2
  where r = count (x:xs) x
mode l = modeh l 0 []

count [] e = 0
count (x:xs) e
 | x == e = 1 + count xs e
 | otherwise = count xs e
