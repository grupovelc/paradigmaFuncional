import System.IO
import Control.Monad

f :: [String] -> [Float]
f = map read

calc = do  
        let list = []
        handle <- openFile "tabela1Hora.csv" ReadMode
        contents <- hGetContents handle
        let singlewords = words contents
            list = f singlewords

        print list
        hClose handle 



----STACK OVERFLOW : LENDO UM ARQUIVO -----
--getLines = liftM lines . readFile

--main = do
  --list <- getLines "arquivo.txt"
    --mapM_ putStrLn list
