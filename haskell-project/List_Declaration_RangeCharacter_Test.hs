import List_Declaration_RangeCharacter_Run (alphabet)
import qualified TechIO.Helper as TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest alphabet ['A'..'Z']

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"