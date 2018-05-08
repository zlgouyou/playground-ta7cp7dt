import Primitive_Numbers_Multiplication_Run (mult)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (mult 5 6) 30
    TechIo.simpleTest (mult 5 (-3)) (-15)
    TechIo.simpleTest (mult (5.3) 1) 5.3


main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "La calculatrice est surement ton melleur ami \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "C'est bon tu maitrise la multiplication"