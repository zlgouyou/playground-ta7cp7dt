import ListAndTuple_List_Declaration_Simple_Run (listFrom1To5)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest listFrom1To5 [1..5]

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
      TechIo.sendMsg "Astuce 💡" "Afin de définir cette liste on peut utiliser les \"ranges\" : [1..5] \x1F609"