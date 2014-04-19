vetorX [] = []
vetorX (cabeca : calda) =  [cabeca] ++ vetorX ( drop 1 calda)
