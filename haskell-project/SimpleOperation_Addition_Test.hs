import SimpleOperation_Addition_Run (add)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (add 5 6) 11
    TechIo.simpleTest (add 5 (-3)) 2
    TechIo.simpleTest (add (5.3) 1) 6.3


main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "La calculatrice est surement ton melleur ami \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "C'est bon tu maitrise l'addition"