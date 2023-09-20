notIn e [] = True
notIn e (x:xs)
 | e == x = False
 | otherwise = notIn e xs

password l = do
 putStr "Enter password: "  
 pass <- getLine
 if not(notIn pass l)
      then password l
   else return (pass:l)
 return l
