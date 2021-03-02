--------------------------------------------------------------------------------
import Data.List

import XMonad
import System.Exit

import XMonad.Actions.CycleWS

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Prompt.FuzzyMatch
--------------------------------------------------------------------------------
main = xmonad defaultConfig
        { modMask = mod4Mask
        , terminal = "konsole"
        , borderWidth = 5
        , normalBorderColor  = "#dddddd"
        , focusedBorderColor = "ff0000"
        , workspaces = ["1", "2", "3", "4", "5", "6", "8", "9"]
        , keys = myKeys
        }
--------------------------------------------------------------------------------
myXPConfig :: XPConfig
myXPConfig = def
      {
        font                = "xft:Fira Code:style=Bold:pixelsize=16"
      , bgColor             = "#292d3e"
      , fgColor             = "#d0d0d0"
      , bgHLight            = "#c792ea"
      , fgHLight            = "#000000"
      , borderColor         = "#535974"
      , promptBorderWidth   = 1
      , position            = CenteredAt { xpCenterY = 0.3, xpWidth = 0.3 }
      , height              = 40
      , historySize         = 256
      , historyFilter       = id
      , defaultText         = []
      , showCompletionOnTab = False
      , searchPredicate     = fuzzyMatch
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
      -- Workspace and Screen Management
    , ((modm,               xK_Down),  nextWS)
    , ((modm,               xK_Up),    prevWS)
    , ((modm .|. shiftMask, xK_Down),  shiftToNext)
    , ((modm .|. shiftMask, xK_Up),    shiftToPrev)
    , ((modm,               xK_Right), nextScreen)
    , ((modm,               xK_Left),  prevScreen)
    , ((modm .|. shiftMask, xK_Right), shiftNextScreen)
    , ((modm .|. shiftMask, xK_Left),  shiftPrevScreen)
      --------------------------------------------------------------------------
      -- XMonad Management
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))
    , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")
      --------------------------------------------------------------------------
    ]
--------------------------------------------------------------------------------
