import Function_PartialApplication_Plain_Run (add10)
import qualified TechIo
import qualified TechIoMockFunction
import Control.Monad
import Control.Exception
import Data.IORef


currentTest = do
    TechIo.simpleTest (add10 3) 13
    TechIo.simpleTest (add10 20) 30

main = do
  result <- TechIo.simpleRunner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
      TechIo.failure
    TechIo.Success -> do
      used <- TechIoMockFunction.isFunctionUsed
      case used of
        True -> do
          TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
          TechIo.success
        False -> do
          TechIo.sendMsg "Oops! 🐞" "N'essaye pas de m'avoir humain utilise la fonction add!"
          TechIo.failure
