
---------------   Ejercicio 1 ----------------   
-- Definir la función average3Numbers tal que (average3Numbers x y z) es el promedio 
-- de los números ‘x’, ‘y’ y ‘z’.
average3Numbers :: (Floating a) => a -> a -> a -> a
average3Numbers x y z = ((x+y+z)/3)

---------------- Ejercicio 2 ----------------
-- Definir la función isLastDigit3 tal que (isLastDigit2 x) determina si el último dígito del 
-- número ‘x’ es 3.
isLastDigit3 :: (Integral a) => a -> Bool
isLastDigit3 num = (mod num 10) == 3

---------------- Ejercicio 3 ----------------
-- Definir la función has3Digits tal que (has3Digits x) determina si el número ‘x’ tiene 3 dígitos.
has3Digits :: (Integral a) => a -> Bool
has3Digits num = num >= 100 && num <= 999

---------------- Ejercicio 4 ----------------
-- Definir la función isNegative tal que (isNegative x) determina si el número ‘x’ es un número negativo.
isNegative :: Int -> Bool
isNegative num = if num < 0 then True else False

---------------- Ejercicio 5 ----------------
-- Definir la función sum2Digits tal que (sum2Digit x) es la suma de los 2 dígitos que 
-- componen al número ‘x’, donde ‘x’ es un número de 2 dígitos.
sum2Digits :: (Integral a) => a -> a
sum2Digits num
    |num >= 10 && num <= 99 = suma
    |otherwise = error "El número no tiene 2 dígitos"
    where 
        suma = (mod num 10) + (div num 10)

---------------- Ejercicio 6 ----------------
-- Definir la función even2Digits tal que (even2Digit x) determina si los 2 dígitos que
-- componen al número ‘x’ son número pares, donde ‘x’ es un número de 2 dígitos.
even2Digits :: (Integral a) => a -> Bool
even2Digits num
    |num >= 10 && num <= 99 = num1 && num2
    |otherwise = error "El número no es de 2 digitos"
    where 
        num1 = even (mod num 10) 
        num2 = even (div num 10)

---------------- Ejercicio 7 ----------------
-- Definir la función isPrimeNumber tal que (isPrimeNumber x) determina si el número 
-- ‘x’ es alguno de los primeros 8 números primos.
isPrimeNumber :: (Integral a) => a -> Bool
isPrimeNumber num 
    | num == 2 = True
    | num == 3 = True
    | num == 5 = True
    | num == 7 = True
    | num == 11 = True
    | num == 13 = True
    | num == 17 = True
    | num == 19 = True
    |otherwise = False   

---------------- Ejercicio 8 ----------------
-- Definir la función isEvenAndPrimeNumber tal que (isEvenAndPrimeNumber x) 
-- determina si el número ‘x’ es alguno de los primeros 8 números primos, además si 
-- es un número par.
isEvenAndPrimeNumber :: (Integral a) => a -> Bool
isEvenAndPrimeNumber num = num == 2

---------------- Ejercicio 9 ----------------
-- Definir la función isMultiple tal que (isMultiple x y) determina si el número ‘x’ es
-- múltiplo de del número ‘y’.
isMultiple :: (Integral a) => a -> a -> Bool
isMultiple x y = (mod x y) == 0

---------------- Ejercicio 10 ----------------
-- Definir la función isEqual2Digits tal que (isEqual2Digits x) determina si los 2 dígitos
-- que componen al número ‘x’ son número iguales, donde ‘x’ es un número de 2
isEqual2Digits :: (Integral a) => a -> Bool
isEqual2Digits num
    |num >= 10 && num <= 99 = dig1 == dig2
    |otherwise = error "El número no es de 2 digitos"
    where 
        dig1 = (mod num 10)
        dig2 = (div num 10)

---------------- Ejercicio 11 ----------------
-- Definir la función higher tal que (higher x y z) determina el número mayor de 3
-- número ‘x’,’y’ y ‘z’
higher :: (Integral a) => a -> a -> a -> a
higher x y z
    |x > y && x > z = x
    |y > x && y > z = y
    |z > x && z > y = z
    -- Si dos numeros son iguales y mayores
    |x == y && x > z = x
    |y == z && y > x = y
    |x == z && z > y = z

---------------- Ejercicio 12 ----------------
-- Definir la función isEvenSum2Number tal que (isEvenSum2Number x y) determina si
-- la suma entre el número x y el número y origina un número par.
isEvenSum2Number :: (Integral a) => a -> a -> Bool
isEvenSum2Number x y = even (x + y)  

---------------- Ejercicio 13 ----------------
-- Definir la función sum2Digit2Number tal que (sum2Digit2Number x y ) es la suma de
-- todos los dígitos de los números ‘x’ y ‘y’, siendo ‘x’ y ‘y’ número de 2 dígitos.
sum2Digit2Number :: (Integral a) => a -> a -> a
sum2Digit2Number x y 
    |x >= 10 && x <= 99 && y >= 10 && y <= 99 = suma
    |otherwise = error "Algún número no tiene 2 dígitos"
    where 
        dig1 = mod x 10
        dig2 = div x 10
        dig3 = mod y 10
        dig4 = div y 10
        suma = dig1 + dig2 + dig3 + dig4

---------------- Ejercicio 14 ----------------
-- Definir la función sum3Digits tal que (sum3Digits x) es la suma de los 3 dígitos que
-- componen al número ‘x’, donde ‘x’ es un número de 3 dígitos.
sum3Digits :: (Integral a) => a -> a
sum3Digits num
    |num >= 100 && num <= 999 = suma
    |otherwise = error "El número no tiene 3 dígitos"
    where
        dig1 = div num 100
        dig2 = mod (div num 10) 10
        dig3 = mod num 10
        suma = dig1 + dig2 + dig3

---------------- Ejercicio 15 ----------------
-- Definir la función equal3Digits tal que (equal3Digits x) determina si al menos dos de
-- los tres dígitos de ‘x’ son iguales, donde ‘x es un número de 3 dígitos.’
equal3Digits :: (Integral a) => a -> Bool
equal3Digits num
    |num >= 100 && num <= 999 = dig1 == dig2 || dig2 == dig3 || dig1 == dig3
    |otherwise = error "El número no tiene 3 dígitos"
    where
        dig1 = div num 100
        dig2 = mod (div num 10) 10
        dig3 = mod num 10
        suma = dig1 + dig2 + dig3


---------------- Ejercicio 16 ----------------
-- Definir la función positionHigher3Digits tal que (positionHigher3Digits x) determina en
-- qué posición está el dígito mayor del número ‘x’, donde ‘x’ es un número de 3 dígitos.
positionHigher3Digits :: (Integral a) => a -> String
positionHigher3Digits num
    |num <= 99 || num >= 1000 = error "El número no tiene 3 dígitos"
    |dig1 > dig2 && dig1 > dig3 = "El mayor se encuentra en la pos 1"
    |dig2 > dig1 && dig2 > dig3 = "El mayor se encuentra en la pos 2"
    |dig3 > dig1 && dig3 > dig2 = "El mayor se encuentra en la pos 3"
    where
        dig1 = div num 100
        dig2 = mod (div num 10) 10
        dig3 = mod num 10

---------------- Ejercicio 17 ----------------
-- Definir la función palindrome tal que (palindrome xs) determina si xs es palíndromo;
-- es decir, es lo mismo xs de izquierda a derecha que de derecha a izquierda, donde
-- xs es una lista. (puede utilizar el sistema de tipos Eq )
palindrome :: (Eq a) => [a] -> Bool
palindrome array = array == reverse array

---------------- Ejercicio 18 ----------------
-- Definir la función safeDivision tal que (safeDivision x y) es la división de x/y,
-- mostrando un error cuando ‘y’ es 0
safeDivision :: (Eq a, Fractional a) => a -> a -> a
safeDivision x y 
    |y /= 0 = x / y
    |otherwise = error "No es posible dividir entre 0"

---------------- Ejercicio 19 ----------------
-- Definir la función xor tal que (xor x y), es el resultado de la operación lógica
-- disyunción (x, y valores booleanos)
xor :: Bool -> Bool -> Bool 
xor x y = not(x && y)

----------------  Ejercicio 20 ----------------
-- Definir la función distance tal que (distance x y) es la distancia existente entre 2
-- puntos, siendo ‘x’ y ‘y’ coordenada de un plano cartesiano.
distance :: (Floating a) => (a,a) -> (a,a) -> a
distance x y = sqrt ((fst x - fst y)^2 + (snd x - snd y)^2)