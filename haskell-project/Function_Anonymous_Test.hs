import Function_Anonymous_Run (add2ToAllListElement)
import qualified TechIo
import qualified TechIoMockFunction
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (add2ToAllListElement [1..5]) [3..7]
    TechIo.simpleTest (add2ToAllListElement [1..20]) [3..22]

runner tests = handle TechIo.assertHandler $ do
  tests
  return TechIo.Success

main = do
  result <- runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      used <- TechIoMockFunction.isFunctionUsed
      case used of
        True -> do
          TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
          TechIo.success
        False -> do
          TechIo.sendMsg "Oops! 🐞" "N'essaye pas de m'avoir humain utilise la fonction map!"
          TechIo.failure
