import Primitive_Numbers_IntegerDivision_Run (intDiv)
import qualified TechIO.Helper as TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (intDiv 6 5) 1
    TechIo.simpleTest (intDiv 6 (-3)) (-2)
    TechIo.simpleTest (intDiv 6 3) 2


main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "La calculatrice est surement ton melleur ami \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "C'est bon tu maitrise la division entiére"