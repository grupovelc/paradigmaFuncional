module ArquivosForex (obtemTipoGrafico,lerCotacoes, lerCandle) where

import System.IO
--import Control.Monad
import Foreign.Marshal

stringFromFloat :: [String] -> [Float]
stringFromFloat = map read

obtemTipoGrafico = do
    arquivoForex <- openFile "criterioEntrada.txt" ReadMode
    contents <- hGetContents arquivoForex
    let singlewords = words contents
    let calda = tail singlewords
    let tipoGrafico = head calda
    return tipoGrafico

lerCotacoes = do
        let grafico = (unsafeLocalState obtemTipoGrafico) ++ ".csv"
        print grafico
        let listaDeCotacoes = []
        arquivoForex <- openFile grafico ReadMode
        conteudo <- hGetContents arquivoForex
        let listaDePalavras = words conteudo
            listaDeCotacoes = stringFromFloat listaDePalavras
        return listaDeCotacoes

lerCandle = do
    arquivoForex <- openFile "criterioEntrada.txt" ReadMode
    conteudo <- hGetContents arquivoForex
    let listaDePalavras = words conteudo
    let candle = truncate (read (last listaDePalavras) :: Float)
    return candle

