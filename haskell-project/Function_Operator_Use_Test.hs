import Function_Operator_Use_Run (operatorUse)
import qualified TechIO.Helper as TechIo
import qualified TechIO.VerifyUsedFunctionSimple as Verify
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
  TechIo.simpleTest operatorUse 1

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
          TechIo.sendMsg "Oops! 🐞" "N'essayes pas de m'avoir humain, utilise la fonction //!"
          TechIo.failure