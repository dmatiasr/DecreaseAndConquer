--ALGORITHM
--LomutoPartition(A[l..r])
--Partitions subarray by Lomuto’s algorithm using first element as pivot
--Input: A subarray A[l..r] of array A[0..n − 1], defined by its left and right
--
--indices l and r (l ≤ r)
--Output: Partition of A[l..r] and the new position of the pivot
--p ← A[l]
--s ← l
--for i ← l + 1 to r do
--if A[i] < p
--s ← s + 1; swap(A[s], A[i])
--swap(A[l], A[s])
--return s
import Data.List (partition)

--QuickSelect basado en el libro, recursivo.
-- Dado un k, y una lista desordenada de naturales.
--ordena parcialmente los elementos y me retorna la posicion del elemento q
--se encuentra en el k-esimo lugar, de forma ordenada segun sus elementos.
quickselect :: Ord a =>Int -> [a] -> a
quickselect n [] = undefined
quickselect n (x:xs) | n<length ys = quickselect n ys
					 | n>length ys = quickselect (n-length ys-1) zs
					 | otherwise = x
			           where (ys,zs) = partition (<x) xs
	
minMaxList :: Ord a => [a]->[a]
minMaxList []=[]
minMaxList [x]=[x]
minMaxList xs = [quickselect 0 xs]++[quickselect (length xs -1) xs ]                                           