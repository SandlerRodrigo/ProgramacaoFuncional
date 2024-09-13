getCount :: String -> Int
getCount = length . filter (`elem` "aeiou")

getCount2 :: String -> Int
getCount2 [] = 0
getCount2 (x:xs)
    | x `elem` "aeiou" = 1 + getCount2 xs
    | otherwise = getCount2 xs

getCount3 :: String -> Int
getCount3 str = length [i | i <- str, i `elem` "aeiou"]

main :: IO ()
main = do
  putStrLn "Enter a string: "
  str <- getLine
  putStrLn $ "Number of vowels in the string: " ++ show (getCount str)