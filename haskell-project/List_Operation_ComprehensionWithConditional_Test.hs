import List_Operation_ComprehensionWithConditional_Run (allEvenSquare)
import qualified TechIO.Helper as TechIo
import qualified TechIO.VerifyUsedFunctionSimple as Verify
import Control.Monad
import Control.Exception
import Data.IORef

test :: (Eq a, Show a) => a -> a -> IO ()
test result expected = do
  unless (result == expected) $ do
    throw $ TechIo.AssertFailed $ " Les carrés entiers naturels vont de 0 à l'infini"

currentTest = do
    test (take 999999 allEvenSquare) (take 999999 [ x^2 | x <- [0..] , even x])

main = do
  result <- TechIo.simpleRunner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Astuce 💡" "Humain à ce rythme je vais te battre \x1F914"
      TechIo.failure
    TechIo.Success -> do
      used <- Verify.isFunctionUsed
      case used of
        True -> do
          TechIo.sendMsg "Oops! 🐞" "N'essaye pas de m'avoir humain, tu n'as pas le droit d'utiliser la fonction map!"
          TechIo.failure
        False -> do
          TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
          TechIo.success