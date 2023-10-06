removeDuph [] cur l2 = l2
removeDuph (x:xs) cur l2
 | cur == x = removeDuph xs cur l2
 | otherwise = removeDuph xs x (l2 ++ [x])
removeDup (x:xs) = removeDuph xs x [x]
removeDuplicate l = removeDup (quicksort l)
