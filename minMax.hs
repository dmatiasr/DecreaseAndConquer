--Utilizando la tecnica Decrease & Conquer, disene un algoritmo para encontrar los elementos mayor
--y menor de una secuencia de n enteros positivos. Implemente su algoritmo en Haskell.


--Minimo con 0 (n)
minimo::Ord a=>[a]->a
minimo []= undefined
minimo [x]= x
minimo (x:y:xs) | x<=y =  minimo (x:xs)
			 | otherwise = minimo (y:xs) 

--Encontrar el minimo y maximo de una lista es
-- log n en un solo algoritmo previamente ordenando la lista y sacando el primero
-- o minimo y el ultimo o maximo. ambos concatenados.


minMaxList :: Ord a=> [a]->[a]
minMaxList [] = []
minMaxList xs = [head (mergesort xs)]++[last (mergesort xs)]


left :: [a]->[a]
left [] = []
left xs = take (length xs `div` 2) xs

right :: [a]->[a]
right [] = []
right xs = drop (length xs `div` 2) xs


merge:: Ord a=>[a]->[a]->[a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) | x<=y = x:(merge xs (y:ys))
					| otherwise = y:(merge (x:xs) ys)


mergesort :: Ord a=>[a]->[a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort (left xs) ) (mergesort (right xs) )
	


