import List_Operation_Init_Run (getBegin)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (getBegin [1..5]) [1..4]
    TechIo.simpleTest (getBegin [3..4]) [3]
    TechIo.simpleTest (getBegin [4]) []

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"