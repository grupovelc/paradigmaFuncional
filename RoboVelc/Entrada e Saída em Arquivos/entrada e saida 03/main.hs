import System.IO
import Data.Char(toUpper)
 
main :: IO ()
main = do
       inpStr <- readFile "entrada.txt"
       writeFile "saida.txt" (map toUpper inpStr)
