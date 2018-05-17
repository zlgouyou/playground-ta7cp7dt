{-# LANGUAGE CPP #-}
module Function_Anonymous_Run(add2ToAllListElement) where
import Prelude hiding (map)
import qualified Data.List (map)
import qualified TechIO.VerifyUsedFunctionSimple as Verify

map :: (a -> b) -> [a] -> [b]
map = Verify.watchOn Data.List.map

#include "Function_Anonymous.hs"