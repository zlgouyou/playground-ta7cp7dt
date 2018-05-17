{-# LANGUAGE CPP #-}
module List_Operation_ComprehensionWithConditional_Run(allEvenSquare) where
import qualified TechIoMockFunction as Mock
import Prelude hiding (map)
import qualified GHC.Base (map)

map ::  (a -> b) -> [a] -> [b]
map = Mock.mockFunction (GHC.Base.map)

#include "List_Operation_ComprehensionWithConditional.hs"