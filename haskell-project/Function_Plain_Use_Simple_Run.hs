{-# LANGUAGE CPP #-}
module Function_Plain_Use_Simple_Run(addUse) where
import qualified TechIoMockFunction

add :: Num a => a -> a -> a
add a b = TechIoMockFunction.mockFunction (a + b)

#include "Function_Plain_Use_Simple.hs"