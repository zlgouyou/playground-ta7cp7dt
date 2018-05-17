import Primitive_String_Concat_Run (namedHello)
import qualified TechIO.Helper as TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (namedHello "Haskell") "Hello Haskell"
    TechIo.simpleTest (namedHello "Ludovic") "Hello Ludovic"
    TechIo.simpleTest (namedHello "Yoann") "Hello Yoann"

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Bonjour Humain \x1F468"