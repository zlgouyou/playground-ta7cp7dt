import List_Operation_IndexInto_Run (getElementIntoAList)
import qualified TechIO.Helper as TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (getElementIntoAList [1..5] 2) 3
    TechIo.simpleTest (getElementIntoAList [5,4..1] 1) 4
    TechIo.simpleTest (getElementIntoAList [1..] 99) 100

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"