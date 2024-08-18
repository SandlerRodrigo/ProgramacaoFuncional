fib x
    | x < 2 = 1
    | otherwise = fib (x - 1) + fib (x - 2)

cedulas :: Int -> [Int] -> [Int] -> [Int]
cedulas 0 _ resultado = resultado
cedulas valor (nota:notas) resultado =
    let contador = valor `div` nota
        resto = valor `mod` nota
    in cedulas resto notas (resultado ++ [contador])
