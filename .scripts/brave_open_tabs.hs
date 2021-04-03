--------------------------------------------------------------------------------
{-
Use this to compile:

```hs
ghc --make -dynamic brave_open_tabs.hs -o ~/bin/brave_open_tabs
```

And use this to run:

```sh
./bin/brave_open_tabs ~/.scripts/db/<db-name>
```
-}
--------------------------------------------------------------------------------
import System.Environment
import System.Process
--------------------------------------------------------------------------------
main = do
          args         <- getArgs
          content      <- readFile (head args)
          let links     = lines    content
          let numLinks  = length   links
          let commands  = zipWith  (++) (braveCmdListGenerator numLinks) links
          mapM callCommand commands

braveCmdListGenerator  :: Int -> [String]
braveCmdListGenerator   = appendNewWindowToFirst . replicateBrave

replicateBrave         :: Int -> [String]
replicateBrave n        = replicate n "brave "

appendNewWindowToFirst       :: [String] -> [String]
appendNewWindowToFirst (x:xs) = (x ++ "--new-window "):xs
--------------------------------------------------------------------------------
