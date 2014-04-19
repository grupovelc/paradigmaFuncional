vetorX [] = []
vetorX (cabeca : calda) =  [cabeca] ++ vetorX ( drop 1 calda)

vetorY [] = []
vetorY (cabeca : calda) = [(head calda)] ++ vetorY ( drop 1 calda)

covarianciaPearson [] [] xMedio yMedio = 0
covarianciaPearson (cabecaX : caldax) (cabecaY : calday) xMedio yMedio = (cabecaX - xMedio) * (cabecaY - yMedio) + (covarianciaPearson caldax calday xMedio yMedio)

varianciaPearson [] media = 0
varianciaPearson (cabeca : calda) media = (cabeca - media) ** 2 + (varianciaPearson calda media)