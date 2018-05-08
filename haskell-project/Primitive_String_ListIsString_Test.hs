import Primitive_String_ListIsString_Run (rockForever)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest rockForever "ROCK FOREVER"

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Le rock est certe éternel comme la pierre cenpendant ils ne s'écrivent pas de la même façon! \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Il n'y a que ça de vrai Humain \x1F3B8"
      TechIo.sendMsg "Astuce 💡" "Pour plus d'information: http://hackage.haskell.org/package/base-4.11.1.0/docs/Data-String.html"
