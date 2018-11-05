module Main where
import           FRP.Yampa                          (Event (..), SF, arr, tag,
                                                     (>>>))
import           Graphics.Gloss
import           Graphics.Gloss.Interface.FRP.Yampa
import qualified Graphics.Gloss.Interface.IO.Game   as G
import           System.Random                      (StdGen, newStdGen)

import           Types

--------------------------------------------------------------------------------

-- something like a game loop in other languages
-- for handling overall game process, parsing the input, initializing game logic
-- drawing the resulting game state
mainSignal :: StdGen -> SF (Event InputEvent) Picture
mainSignal g = undefined

main :: IO ()
main = do
  r <- newStdGen
  playYampa
   (InWindow "Sugarman" (410, 500) (200, 200))
   white
   30
   (mainSignal g)
