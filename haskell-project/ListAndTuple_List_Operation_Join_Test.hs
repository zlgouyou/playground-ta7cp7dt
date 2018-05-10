import ListAndTuple_List_Operation_Join_Run (joinList)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (joinList [1..4] []) [1..4]
    TechIo.simpleTest (joinList [] [1..4]) [1..4]
    TechIo.simpleTest (joinList [1..4] [5..8]) [1..8]

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"