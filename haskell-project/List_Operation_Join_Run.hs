{-# LANGUAGE CPP #-}
module List_Operation_Join_Run(joinList) where
import qualified TechIO.VerifyUsedFunctionSimple as Verify
import Prelude hiding ((++))
import qualified GHC.Base ((++))

(++) :: [a] -> [a] -> [a]
(++) = Verify.watchOn (GHC.Base.++)

#include "List_Operation_Join.hs"