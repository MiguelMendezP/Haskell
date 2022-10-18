
------------------------- 1. Ejercicio: firstToEnd -------------------------
-- Definir la función firstToEnd tal que (firstToEnd xs) es una lista donde el primer
-- elemento de xs, pasa a ser el último elemento de la nueva lista.

firstToEnd :: (Ord a) => [a] -> [a]
firstToEnd (x:xs) = xs ++ [x]


------------------------- 2. Ejercicio : minAndMax -------------------------
-- Definir la función minAndMax tal que (minAndMax xs) es una lista con únicamente 2
-- elementos (elemento mínimo de xs y elemento máximo de xs), donde xs es una lista

minAndMax :: (Ord a) => [a] -> [a]
minAndMax lista = [minimum lista] ++ [maximum lista]


------------------------- 3. Ejercicio: minorsFirstElement -------------------------
-- Definir la función minorsFirstElement tal que (minorsFirstElement xs) es una lista con
-- los elementos menores al primer elemento de xs, donde xs es una lista.(El primer
-- elemento se ignora)

minorsFirstElement :: (Ord a) => [a] -> [a]
minorsFirstElement [] = error "Lista vacia"
minorsFirstElement (x:xs) = [y | y <- xs, y<x ] 

------------------------- 4. Ejercicio: greaterOrEqualFirstElement -------------------------
-- Definir la función greaterOrEqualFirstElement tal que (greaterOrEqualFirstElement
-- xs) es una lista con los elementos mayores o iguales al primer elemento de xs,
-- donde xs es una lista.(El primer elemento se ignora)

greaterOrEqualFirstElement :: (Ord a) => [a] -> [a]
greaterOrEqualFirstElement [] = error "Lista vacia"
greaterOrEqualFirstElement (x:xs) = [y | y <- xs, y>x]

------------------------- 5. Ejercicio: minorsToSumFirstAndSecondElem -------------------------
-- Definir la función minorsToSumFirstAndSecondElem tal que
-- (minorsToSumFirstAndSecondElem xs) es una lista con los elementos menores a la
-- suma del primer y segundo elemento de xs (sin tomar en cuenta los primeros 2
-- elementos), donde xs es una lista.

minorsToSumFirstAndSecondElem :: (Integral a) => [a] -> [a]
minorsToSumFirstAndSecondElem [] =  error "Lista vacia" 
minorsToSumFirstAndSecondElem (x:y:xs) = [z | z <- xs, z < (x+y)]

------------------------- 6. Ejercicio: listSumDuplaToList -------------------------
-- Definir la función listSumDuplaToList tal que (listSumDuplaToList xs) es una lista en
-- la que cada elemento es la suma de los elementos de cada dupla, donde xs es una
-- lista de duplas.

listSumDuplaToList :: (Num a) => [(a, a)] -> [a]
listSumDuplaToList [] = []
listSumDuplaToList (x:xs) = [fst x + snd x] ++ (listSumDuplaToList xs)

------------------------- 7. Ejercicio: listMultTripletaToList -------------------------
-- Definir la función listMultTripletaToList tal que (listMultTripletaToList xs) es una lista
-- en la que cada elemento es la multiplicación de los elementos de cada tripleta,
-- donde xs es una lista de tripletas.

fst' :: (a, b, c) -> a
fst' (a,_,_) = a
snd' :: (a, b, c) -> b
snd' (_,b,_) = b
thrd' :: (a, b, c) -> c
thrd' (_,_,c) = c


listMultTripletaToList :: (Num a) => [(a, a, a)] -> [a]
listMultTripletaToList [] = []
listMultTripletaToList (x:xs) = [fst' x * snd' x * thrd' x] ++ (listMultTripletaToList xs)


------------------------- 8. Ejercicio: changeFstToSnd -------------------------
-- Definir la función changeFstToSnd tal que (changeFstToSnd xs) es una lista en
-- donde los elementos de una dupla cambian de posición, donde xs es una lista de duplas.

changeFstToSnd :: (Num a) => [(a, a)] -> [(a, a)]
changeFstToSnd [] = []
changeFstToSnd (x:xs) = [(snd x, fst x)] ++ (changeFstToSnd xs)


------------------------- 9. Ejercicio: sumVectors -------------------------
-- Definir la función sumVectors tal que (sumVectors xs) es un vector resultante de la
-- suma de los diferentes vectores de xs, donde xs es una lista de duplas.

sumFirstElement :: (Num a) => [(a, a)] -> a
sumFirstElement [] = 0
sumFirstElement (x:xs) = (fst x) + (sumFirstElement xs)

sumSecondtElement :: (Num a) => [(a, a)] -> a
sumSecondtElement [] = 0
sumSecondtElement (x:xs) = (snd x) + (sumSecondtElement xs)

sumVectors :: (Num a) => [(a, a)] -> (a, a)
sumVectors vector = (sumFirstElement vector , sumSecondtElement vector)


------------------------- 10. Ejercicio: dividers -------------------------
-- Definir la función dividers tal que (dividers n) es una lista de los divisores de n, donde
-- n es un número.

dividers :: (Integral a) => a -> [a]
dividers n = [x | x <- [1..n], (mod n x) == 0]


------------------------- 11. Ejercicio: primeNumbers------------------------- 
-- Definir la función primeNumbers tal que (primeNumbers n) es una lista con los
-- números primos existentes de 1 a n, donde n es un número.
-- Recuerda: un número primo tiene únicamente 2 divisores 1 y el mismo número.

elimina :: (Integral a) => a -> [a] -> [a]
elimina n xs = [ x | x <- xs, mod x  n /= 0 ]

criba :: (Integral a) => [a] -> [a]
criba [] = []
criba (x:xs) = x : criba (elimina x xs)

primeNumbers :: (Integral a) => a -> [a]
primeNumbers n = criba [2..n] 

------------------------- 12. Ejercicio:infinitePrimeNumbers ------------------------- 
-- Definir la función infinitePrimeNumbers tal que (infinitePrimeNumbers) es una lista
-- infinita de los números primos.

infinitePrimeNumbers :: [Integer]
infinitePrimeNumbers = criba [2..]


 