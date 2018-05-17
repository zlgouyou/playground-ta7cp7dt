{-# LANGUAGE CPP #-}
module List_Operation_Join_Run(joinList) where
import qualified TechIoMockFunction as Mock
import Prelude hiding ((++))
import qualified GHC.Base ((++))

(++) :: [a] -> [a] -> [a]
(++) = Mock.mockFunction (GHC.Base.++)

#include "List_Operation_Join.hs"