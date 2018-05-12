import Function_Use_Simple_Run (addUse, functionBuiltinUsed)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef


currentTest = do
    TechIo.simpleTest addUse 3

runner tests = handle TechIo.assertHandler $ do
            tests
            return TechIo.Success

main = do
  result <- runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      used <- readIORef functionBuiltinUsed
      case used of
        True -> do
          TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
          TechIo.success
        False -> do
          TechIo.sendMsg "Oops! 🐞" "N'essaye pas de m'avoir humain utilise la fonction add!"
          TechIo.failure
