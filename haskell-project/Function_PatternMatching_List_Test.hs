import Function_PatternMatching_List_Run (myMap)
import qualified TechIo
import qualified TechIoMockFunction
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (myMap (\x -> x+1) [1..5]) [2..6]
    TechIo.simpleTest (myMap length ["A", "AA", "AAA"]) [1..3]

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
          TechIo.sendMsg "Oops! 🐞" "N'essaye pas de m'avoir humain tu n'as pas le droit d'utiliser la fonction map!"
          TechIo.failure
        False -> do
          TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
          TechIo.success
