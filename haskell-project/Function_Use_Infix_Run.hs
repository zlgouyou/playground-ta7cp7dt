{-# LANGUAGE CPP #-}
module Function_Use_Infix_Run(addUse, functionBuiltinUsed) where
import Data.IORef
import System.IO.Unsafe

functionBuiltinUsed = unsafePerformIO (newIORef False)
add :: Num a => a -> a -> a
add a b = unsafePerformIO (writeIORef functionBuiltinUsed True) `seq` (a + b)

#include "Function_Use_Infix.hs"