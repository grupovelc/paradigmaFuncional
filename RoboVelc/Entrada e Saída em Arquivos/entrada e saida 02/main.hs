import System.IO
import Data.Char(toUpper)
 
main :: IO ()
main = do
       inh <- openFile "entrada.txt" ReadMode
       outh <- openFile "saida.txt" WriteMode
       inpStr <- hGetContents inh
       hPutStr outh (map toUpper inpStr)
       hClose inh
       hClose outh
