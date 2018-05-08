import Primitive_Numbers_Division_Run (division)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (division 15 5) 3
    TechIo.simpleTest (division 6 (-3)) (-2)
    TechIo.simpleTest (division 4 5) 0.8


main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "La calculatrice est surement ton melleur ami \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "C'est bon tu maitrise la division"