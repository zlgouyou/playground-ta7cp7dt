{-# LANGUAGE CPP #-}
module Function_PartialApplication_Plain_Run(add10) where
import qualified TechIoMockFunction

add :: Num a => a -> a -> a
add a b = TechIoMockFunction.mockFunction (a + b)

#include "Function_PartialApplication_Plain.hs"