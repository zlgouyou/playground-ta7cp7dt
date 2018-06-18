import Function_PatternMatching_List_Run (myMap)
import qualified TechIO.Helper as TechIo
import qualified TechIO.VerifyUsedFunctionSimple as Verify
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (myMap (\x -> x+1) [1..5]) [2..6]
    TechIo.simpleTest (myMap length ["A", "AA", "AAA"]) [1..3]

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
          TechIo.sendMsg "Oops! 🐞" "N'essayes pas de m'avoir humain, tu n'as pas le droit d'utiliser la fonction map!"
          TechIo.failure
        False -> do
          TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
          TechIo.success
