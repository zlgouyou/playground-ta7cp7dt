{-# LANGUAGE CPP #-}
module Function_Plain_Use_Simple_Run(addUse) where
import qualified TechIO.VerifyUsedFunctionSimple as Verify

add :: Num a => a -> a -> a
add a b = Verify.watchOn (a + b)

#include "Function_Plain_Use_Simple.hs"