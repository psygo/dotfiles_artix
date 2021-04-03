--------------------------------------------------------------------------------
-- Use this to compile:
--
-- ```hs
-- ghc --make -dynamic brave_open_tabs.hs -o bin/brave_open_tabs
-- ```
--
-- And use this to run:
--
-- ```sh
-- ./bin/brave_open_tabs <db-name>
-- ```
--------------------------------------------------------------------------------
import System.Environment
import System.Process
--------------------------------------------------------------------------------
main = do
          args        <- getArgs
          content     <- readFile (head args)
          let links    = lines     content
          let commands = map      ("brave " ++) links
          mapM callCommand commands
--------------------------------------------------------------------------------
