--------------------------------------------------------------------------------
import Data.List

import XMonad
import System.Exit

import XMonad.Actions.CycleWS
import qualified XMonad.Actions.DynamicWorkspaceOrder as DWO

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Prompt.FuzzyMatch

import XMonad.Layout.ThreeColumns
import XMonad.Layout.Accordion
import XMonad.Layout.Tabbed
--------------------------------------------------------------------------------
main = xmonad def
        { modMask            = mod4Mask
        , terminal           = "kitty"
        , borderWidth        = 3
        , normalBorderColor  = "#dddddd"
        , focusedBorderColor = "ff0000"
        , workspaces         = ["1", "2", "3", "4", "5", "6", "8", "9"]
        , keys               = myKeys
        , layoutHook         = myLayout
        }
--------------------------------------------------------------------------------
myXPConfig :: XPConfig
myXPConfig = def
      { font                = "xft:Fira Code:style=Bold:pixelsize=16"
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
myLayout = tiled
       ||| Mirror tiled
       ||| Full
       ||| threeCol
       ||| Accordion
       ||| Mirror Accordion
  where
     tiled    = Tall nmaster delta ratio
     nmaster  = 1
     ratio    = 1/2
     delta    = 1/100
     threeCol = ThreeCol 1 (3/100) (1/2)
--------------------------------------------------------------------------------
myKeys conf@XConfig {XMonad.modMask = modm} = M.fromList
    [
      --------------------------------------------------------------------------
      -- Basic
      ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)
    , ((modm .|. shiftMask, xK_c     ), kill)
    , ((modm              , xK_b     ), spawn brave)
    , ((modm              , xK_f     ), spawn ferdi)
    , ((modm              , xK_t     ), spawn qutebrowser)
    , ((modm              , xK_e     ), spawn emacs)
    , ((modm              , xK_p     ), shellPrompt myXPConfig)
    , ((modm              , xK_d     ), spawn deadKeysLayout)
    , ((modm              , xK_u     ), spawn usLayout)
    , ((modm              , xK_r     ), spawn ranger)
    , ((modm .|. shiftMask, xK_f     ), spawn krusader)
    , ((modm              , xK_Print ), spawn screenshot)
    , ((modm              , xK_z     ), spawn zathura)
    , ((modm              , xK_o     ), spawn okular)
      --------------------------------------------------------------------------
      -- Window Management
    , ((modm .|. shiftMask, xK_space ), sendMessage NextLayout)
    , ((modm,               xK_Tab   ), windows W.focusDown)
    , ((modm .|. shiftMask, xK_Tab   ), windows W.focusUp)
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
    , ((modm .|. shiftMask, xK_j     ), DWO.moveTo Next HiddenWS)
    , ((modm .|. shiftMask, xK_k     ), DWO.moveTo Prev HiddenWS)
    , ((modm .|. shiftMask, xK_l     ), nextScreen)
    , ((modm .|. shiftMask, xK_h     ), prevScreen)
    , ((modm .|. shiftMask, xK_Down  ), DWO.shiftTo Next HiddenWS)
    , ((modm .|. shiftMask, xK_Up    ), DWO.shiftTo Prev HiddenWS)
    , ((modm .|. shiftMask, xK_Right ), shiftNextScreen)
    , ((modm .|. shiftMask, xK_Left  ), shiftPrevScreen)
      --------------------------------------------------------------------------
      -- XMonad Management
    , ((modm .|. shiftMask, xK_q     ), io exitSuccess)
    , ((modm              , xK_q     ), spawn restartRecompile)
      --------------------------------------------------------------------------
    ]

-- Commands
restartRecompile = "xmonad --recompile; xmonad --restart"
deadKeysLayout   = "setxkbmap -layout us -variant intl; xmodmap ~/.Xmodmap"
usLayout         = "setxkbmap -layout us; xmodmap ~/.Xmodmap"
ranger           = "kitty -e ranger"
brave            = "brave"
firefox          = "firefox"
emacs            = "emacs"
ferdi            = "ferdi"
krusader         = "krusader"
qutebrowser      = "qutebrowser"
screenshot       = "scrot ~/Pictures/Screenshots/screenshot.png"
zathura          = "zathura"
okular           = "okular"
--------------------------------------------------------------------------------
