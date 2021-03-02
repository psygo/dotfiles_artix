--------------------------------------------------------------------------------
import Data.List

import XMonad
import System.Exit

import XMonad.Actions.CycleWS

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

import XMonad.Prompt
import XMonad.Prompt.Shell
--------------------------------------------------------------------------------
main = xmonad defaultConfig
        { modMask = mod4Mask
        , terminal = "konsole"
        , borderWidth = 5
        , normalBorderColor  = "#dddddd"
        , focusedBorderColor = "ff0000"
        , workspaces = ["1", "2", "3", "4", "5"]
        , keys = myKeys
        }
--------------------------------------------------------------------------------
myXPConfig :: XPConfig
myXPConfig = def
      {
        font                = "xft:Fira Code Bold Font:size=14"
      , bgColor             = "#292d3e"
      , fgColor             = "#d0d0d0"
      , bgHLight            = "#c792ea"
      , fgHLight            = "#000000"
      , borderColor         = "#535974"
      , promptBorderWidth   = 1
      , position            = Top
      , height              = 20
      , historySize         = 256
      , historyFilter       = id
      , defaultText         = []
      , showCompletionOnTab = False
      , searchPredicate     = isPrefixOf
      , alwaysHighlight     = True
      , maxComplRows        = Nothing
      }
--------------------------------------------------------------------------------
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $
    [
      --------------------------------------------------------------------------
      -- Basic
      ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)
    , ((modm .|. shiftMask, xK_c     ), kill)
    , ((modm              , xK_b     ), spawn "brave")
    , ((modm              , xK_p     ), shellPrompt myXPConfig)
      --------------------------------------------------------------------------
      -- Window Management
    , ((modm,               xK_space ), sendMessage NextLayout)
    , ((modm,               xK_Tab   ), windows W.focusDown)
    , ((modm,               xK_j     ), windows W.focusDown)
    , ((modm,               xK_k     ), windows W.focusUp)
    , ((modm,               xK_m     ), windows W.focusMaster)
    , ((modm,               xK_Return), windows W.swapMaster)
    , ((modm,               xK_h     ), sendMessage Shrink)
    , ((modm,               xK_l     ), sendMessage Expand)
    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))
    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))
      --------------------------------------------------------------------------
      -- XMonad Help and Management
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))
    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")
    , ((modm .|. shiftMask, xK_slash ), spawn ("echo \"" ++ help ++ "\" | xmessage -file -"))
      --------------------------------------------------------------------------
      -- Workspace and Window Management
    , ((modm,               xK_Down),  nextWS)
    , ((modm,               xK_Up),    prevWS)
    , ((modm,               xK_Right), nextScreen)
    , ((modm,               xK_Left),  prevScreen)
      --------------------------------------------------------------------------
    ]
--------------------------------------------------------------------------------
