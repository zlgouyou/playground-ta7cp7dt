import List_Operation_AddToHead_Run (addToHead)
import qualified TechIO.Helper as TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (addToHead 0 [1..4]) [0..4]
    TechIo.simpleTest (addToHead 1 []) [1]

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"