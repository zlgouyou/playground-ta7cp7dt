import List_Declaration_Infinity_Run (allInteger)
import qualified TechIO.Helper as TechIo
import Control.Monad
import Control.Exception
import Data.IORef

test :: (Eq a, Show a) => a -> a -> IO ()
test result expected = do
  unless (result == expected) $ do
    throw $ TechIo.AssertFailed $ " Les entiers naturels vont de 0 à l'infinie"

currentTest = do
    test (take 999999 allInteger) (take 999999 [0..])

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
    TechIo.Success -> do
      TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"