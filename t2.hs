f x
    | x == 0 = "zero"
    | x == 1 = "um"
    | otherwise = "outro valor"

describeList :: [a] -> String
describeList xs
    | null xs = "A lista esta vazia."
    | length xs == 1 = "A lista tem um unico elemento."
    | otherwise = "A lista tem varios elementos."