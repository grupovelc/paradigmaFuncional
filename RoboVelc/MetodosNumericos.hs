import ArquivosForex(cotacoes,detectaQuantidadeCandle)
import CorrelacaoDePearson(correlacaoDePearson)
import Fibonacci(encontrarFibonacciAnterior)
import MediaMovel (mediaMovelInferior, mediaMovelSuperior)
import Foreign.Marshal

main = do
	print (unsafeLocalState (correlacaoDePearson cotacoes))
	print mediaMovelInferior
	print mediaMovelSuperior
