import Function_Composition_Run (foo)
import qualified TechIo
import qualified TechIoMockFunction as Mock
import Control.Monad
import Control.Exception
import Data.IORef


currentTest = do
    TechIo.simpleTest (foo 0) 40
    TechIo.simpleTest (foo 5) 60

main = do
  result <- TechIo.simpleRunner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
      TechIo.failure
    TechIo.Success -> do
      used <- Mock.isFunctionUsed
      case used of
        True -> do
          TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
          TechIo.success
        False -> do
          TechIo.sendMsg "Oops! 🐞" "N'essaye pas de m'avoir humain utilise la composition de fonction!"
          TechIo.failure
