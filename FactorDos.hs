producto :: Int->Int->Int
producto n 0 = 0
producto n 1 = n
producto n (m+1)= n+ producto n m