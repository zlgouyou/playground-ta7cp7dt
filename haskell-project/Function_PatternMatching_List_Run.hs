{-# LANGUAGE CPP #-}
module Function_PatternMatching_List_Run(myMap) where
import Prelude hiding (map)
import qualified Data.List (map)
import qualified TechIO.VerifyUsedFunctionSimple as Verify

map :: (a -> b) -> [a] -> [b]
map = Verify.watchOn Data.List.map

#include "Function_PatternMatching_List.hs"