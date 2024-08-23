cedulas :: Int -> [Int] -> [Int] -> [Int]
cedulas _ [] resultado = resultado
cedulas valor (nota:notas) resultado =
    let contador = valor `div` nota
        restante = valor `mod` nota
    in cedulas restante notas (resultado ++ [contador])

main :: IO ()
main = do
    putStr "Escolha um valor à ser decomposto: "
    valor <- readLn :: IO Int
    let notas = [100, 50, 20, 10, 5, 2, 1]
        resultado = cedulas valor notas []
    mapM_ print $ zip notas resultado