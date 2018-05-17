{-# LANGUAGE CPP #-}
module List_Operation_ComprehensionWithConditional_Run(allEvenSquare) where
import qualified TechIO.VerifyUsedFunctionSimple as Verify
import Prelude hiding (map)
import qualified GHC.Base (map)

map ::  (a -> b) -> [a] -> [b]
map = Verify.watchOn (GHC.Base.map)

#include "List_Operation_ComprehensionWithConditional.hs"