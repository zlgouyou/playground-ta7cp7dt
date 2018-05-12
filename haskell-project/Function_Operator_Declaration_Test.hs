import Function_Operator_Declaration_Run ((//))
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (1 // 3) 0
    TechIo.simpleTest (4 // 2) 2
    TechIo.simpleTest (3 // 2) 1

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
      TechIo.sendMsg "Astuce 💡" "On peut aussi écrire \"(//) = div\""
