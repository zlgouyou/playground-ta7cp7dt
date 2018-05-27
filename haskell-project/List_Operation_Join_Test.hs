import List_Operation_Join_Run (joinList)
import qualified TechIO.Helper as TechIo
import qualified TechIO.VerifyUsedFunctionSimple as Verify
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (joinList [1..4] []) [1..4]
    TechIo.simpleTest (joinList [] [1..4]) [1..4]
    TechIo.simpleTest (joinList [1..4] [5..8]) [1..8]

main = do
  result <- TechIo.simpleRunner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
      TechIo.failure
    TechIo.Success -> do
      used <- Verify.isFunctionUsed
      case used of
        True -> do
          TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
          TechIo.success
        False -> do
          TechIo.sendMsg "Oops! 🐞" "N'essaye pas de m'avoir humain, utilise la de concaténation de fonction!"
          TechIo.failure