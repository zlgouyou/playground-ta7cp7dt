import Function_PatternMatching_Tuple_Run (tupleAdd1ToFirstAnd2ToSecond)
import qualified TechIO.Helper as TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (tupleAdd1ToFirstAnd2ToSecond (8, 5)) (9,7)
    TechIo.simpleTest (tupleAdd1ToFirstAnd2ToSecond (1, 8)) (2,10)

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"