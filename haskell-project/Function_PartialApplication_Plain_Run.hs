{-# LANGUAGE CPP #-}
module Function_PartialApplication_Plain_Run(add10) where
import qualified TechIO.VerifyUsedFunctionSimple as Verify

add :: Num a => a -> a -> a
add a b = Verify.watchOn (a + b)

#include "Function_PartialApplication_Plain.hs"