{-# LANGUAGE CPP #-}
module Function_Operator_Use_Run(operatorUse) where
import qualified TechIO.VerifyUsedFunctionSimple as Verify

(//) :: Integral a => a -> a -> a
(//) = Verify.watchOn div

#include "Function_Operator_Use.hs"