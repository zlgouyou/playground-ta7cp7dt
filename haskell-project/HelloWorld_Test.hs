import HelloWorld_Run (helloHaskell)
import qualified TechIO.Helper as TechIo
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest helloHaskell "Bonjour Haskell"

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Pourquoi tant de haine et ne pas simplement dire Bonjour Haskell? \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 👽" "Bonjour Humain"