module TechIO.VerifyUsedFunction(watchOn, isFunctionUsed) where
import Data.IORef
import System.IO.Unsafe
import qualified Data.Set as Set

usedFunctions :: IORef (Set.Set String)
usedFunctions = unsafePerformIO (newIORef(Set.empty))

watchOn :: String -> a -> a
watchOn name fun = unsafePerformIO (modifyIORef usedFunctions (\set -> Set.insert name set)) `seq` fun

isFunctionUsed :: String -> IO Bool
isFunctionUsed name = (Set.member name) <$> (readIORef usedFunctions)
