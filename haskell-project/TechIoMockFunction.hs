module TechIoMockFunction(functionBuiltinUsed, mockFunction, isFunctionUsed) where
import Data.IORef
import System.IO.Unsafe

functionBuiltinUsed :: IORef Bool
functionBuiltinUsed = unsafePerformIO (newIORef False)

mockFunction :: a -> a
mockFunction fun = unsafePerformIO (writeIORef functionBuiltinUsed True) `seq` fun

isFunctionUsed :: IO Bool
isFunctionUsed = readIORef functionBuiltinUsed
