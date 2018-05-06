import HelloWorldRun (countAllStars)
import qualified TechIo
import Control.Monad
import Control.Exception
import Data.IORef

test :: [Int] -> Int -> IO ()
test arg ref = do
  let res = countAllStars arg :: Int
  unless (res == ref) $ do
    throw $ TechIo.AssertFailed $ "Running countAllStars " ++ show arg ++
      " Expected " ++ show ref ++ ", got " ++ show res

currentTest = do
    TechIo.simpleTest (countAllStars [2,3]) 5
    TechIo.simpleTest (countAllStars [9,-3]) 6

main = do
  result <- TechIo.runner currentTest

  case result of
    TechIo.Failure -> do
      TechIo.sendMsg "Hint 💡" "Did you account for both the galaxy at hand and the rest of them? \x1F914"
    TechIo.Success -> do
      TechIo.sendMsgs "My personal Yoda, you are. 🙏" [
            "* ● ¸ .　¸. :° ☾ ° 　¸. ● ¸ .　　¸.　:. • ",
            "           　★ °  ☆ ¸. ¸ 　★　 :.　 .   ",
            "__.-._     ° . .　　　　.　☾ ° 　. *   ¸ .",
            "'-._\\7'      .　　° ☾  ° 　¸.☆  ● .　　　",
            " /'.-c    　   * ●  ¸.　　°     ° 　¸.    ",
            " |  /T      　　°     ° 　¸.     ¸ .　　  ",
            "_)_/LI"]