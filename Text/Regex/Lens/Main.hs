{-# LANGUAGE QuasiQuotes #-}

import Control.Lens
import Data.Text (Text)
import Text.Regex.Lens (regex, matchedString)
import Text.Regex.Posix (Regex)
import Text.Regex.Quote (r)

main :: IO ()
main = do
  print $ "xxx yyy zzz" ^? regex [r|[^ ]{3}|] . matchedString
  print $ "xxx yyy zzz" ^.. regex [r|[^ ]{3}|] . matchedString
