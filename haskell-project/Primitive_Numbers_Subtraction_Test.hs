import Primitive_Numbers_Subtraction_Run (sub)
import qualified TechIO.Helper as TechIo
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
      TechIo.sendMsg "Astuce 💡" "La calculatrice est surement ta meilleure amie \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "C'est bon tu maîtrises la soustraction"