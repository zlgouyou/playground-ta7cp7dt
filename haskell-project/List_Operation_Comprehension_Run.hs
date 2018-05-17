{-# LANGUAGE CPP #-}
module List_Operation_Comprehension_Run(allSquare) where
import qualified TechIoMockFunction as Mock
import Prelude hiding (map)
import qualified GHC.Base (map)

map ::  (a -> b) -> [a] -> [b]
map = Mock.mockFunction (GHC.Base.map)

#include "List_Operation_Comprehension.hs"