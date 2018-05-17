import Primitive_Boolean_Less_Run (less)
import qualified TechIO.Helper as TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (less 1 1) False
    TechIo.simpleTest (less 1 2) True
    TechIo.simpleTest (less 3 2) False

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"