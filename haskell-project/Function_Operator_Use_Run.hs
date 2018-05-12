{-# LANGUAGE CPP #-}
module Function_Operator_Use_Run(operatorUse) where
import qualified TechIoMockFunction

(//) :: Integral a => a -> a -> a
(//) = TechIoMockFunction.mockFunction div

#include "Function_Operator_Use.hs"