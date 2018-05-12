{-# LANGUAGE CPP #-}
module Function_PatternMatching_List_Run(myMap) where
import Prelude hiding (map)
import qualified Data.List (map)
import qualified TechIoMockFunction

map :: (a -> b) -> [a] -> [b]
map = TechIoMockFunction.mockFunction Data.List.map

#include "Function_PatternMatching_List.hs"