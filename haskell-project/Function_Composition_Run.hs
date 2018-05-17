{-# LANGUAGE CPP #-}
module Function_Composition_Run(foo) where
import qualified TechIO.VerifyUsedFunctionSimple as Verify
import Prelude hiding ((.))
import qualified GHC.Base ((.))

(.) :: (b -> c) -> (a -> b) -> a -> c
(.) = Verify.watchOn (GHC.Base..)

#include "Function_Composition.hs"