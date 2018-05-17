module TechIO.VerifyUsedFunctionSimple(watchOn, isFunctionUsed) where
import qualified TechIO.VerifyUsedFunction as Verify

defaultFunctionName :: String
defaultFunctionName = "default"

watchOn :: a -> a
watchOn = Verify.watchOn defaultFunctionName

isFunctionUsed :: IO Bool
isFunctionUsed = Verify.isFunctionUsed defaultFunctionName


