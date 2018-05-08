import SimpleOperation_Subtraction_Run (sub)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (sub 5 6) (-1)
    TechIo.simpleTest (sub 5 (-3)) 8
    TechIo.simpleTest (sub (5.3) 1) 4.3


main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "La calculatrice est surement ton melleur ami \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "C'est bon tu maitrise la soustraction"