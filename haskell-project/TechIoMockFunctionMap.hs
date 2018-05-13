module TechIoMockFunctionMap(mockFunction, isFunctionUsed) where
import Data.IORef
import System.IO.Unsafe
import qualified Data.Set as Set

functionUsedMap :: IORef (Set.Set String)
functionUsedMap = unsafePerformIO (newIORef(Set.empty))

mockFunction :: String -> a -> a
mockFunction name fun = unsafePerformIO (modifyIORef functionUsedMap (\set -> Set.insert name set)) `seq` fun

isFunctionUsed :: String -> IO Bool
isFunctionUsed name = (Set.member name) <$> (readIORef functionUsedMap)
