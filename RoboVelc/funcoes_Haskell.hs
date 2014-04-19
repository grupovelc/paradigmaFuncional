vetorX [] = []
vetorX (cabeca : calda) =  [cabeca] ++ vetorX ( drop 1 calda)


vetorY [] = []
vetorY (cabeca : calda) = [(head calda)] ++ vetorY ( drop 1 calda)
