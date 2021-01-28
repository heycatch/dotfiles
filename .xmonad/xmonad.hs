import XMonad
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run
import XMonad.Hooks.DynamicLog
import XMonad.Util.CustomKeys
import XMonad.Util.EZConfig
import Graphics.X11.ExtraTypes.XF86

main = do
xmproc <- spawnPipe "xmobar"
xmonad $ defaultConfig
  { terminal = "gnome-terminal"
  , manageHook = manageDocks <+> manageHook defaultConfig
  , layoutHook = avoidStruts $ layoutHook defaultConfig
  , logHook = dynamicLogWithPP $ defaultPP { ppOutput = hPutStrLn xmproc, ppOrder = \(ws:_:t:_) -> [ws,t] }
  , borderWidth = 2
  }
  `additionalKeys`
  [ ((mod1Mask, xK_Control_L), spawn "~/bin/layout_switch.sh")
  , ((mod1Mask, xK_F7), spawn "amixer set Master 2- unmute")
  , ((mod1Mask, xK_F8), spawn "amixer set Master 2+ unmute")
  ]
