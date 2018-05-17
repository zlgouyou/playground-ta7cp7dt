{-# LANGUAGE CPP #-}
module Primitive_Boolean_NotEqual_Run(different) where
import qualified TechIO.VerifyUsedFunctionSimple as Verify
import Prelude hiding ((/=))
import qualified GHC.Base ((/=))

(/=) :: Eq a => a -> a -> Bool
(/=) = Verify.watchOn (GHC.Base./=)

#include "Primitive_Boolean_NotEqual.hs"