import Primitive_Boolean_NotEqual_Run (different)
import qualified TechIO.Helper as TechIo
import qualified TechIO.VerifyUsedFunctionSimple as Verify
import Control.Monad
import Control.Exception
import Data.IORef

currentTest = do
    TechIo.simpleTest (different 1 1) False
    TechIo.simpleTest (different 1 2) True

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
         TechIo.sendMsg "Bien joué. 🎆" "Toujours plus vite toujours plus loin"
         TechIo.success
       False -> do
         TechIo.sendMsg "Oops! 🐞" "N'essaye pas de m'avoir humain utilise la fonction verifiant l'inigalitée!"
         TechIo.sendMsg "Astuce 💡" "Dans beaucoup de langages elle se sybolise par \"!=\" \x1F914"
         TechIo.failure