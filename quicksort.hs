quicksort :: Ord a => [a] -> [a]
quicksort [] = [] -- empty
quicksort (x:xs) = 
 (quicksort [i | i<-xs, i<x]) ++ (x : quicksort [i | i<-xs, i>=x])
