{-# LANGUAGE CPP #-}
module Function_PartialApplication_Operator_Run(add10) where
import qualified TechIoMockFunction
import Prelude hiding ((+))
import qualified GHC.Num ((+))

(+) :: Num a => a -> a -> a
(+) a b = TechIoMockFunction.mockFunction (a GHC.Num.+ b)

#include "Function_PartialApplication_Operator.hs"