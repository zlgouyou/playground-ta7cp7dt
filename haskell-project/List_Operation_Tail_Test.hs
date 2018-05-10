import List_Operation_Tail_Run (getEnd)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (getEnd [1..5]) [2..5]
    TechIo.simpleTest (getEnd [3..4]) [4]
    TechIo.simpleTest (getEnd [4]) []

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"