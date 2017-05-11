import XMonad
import XMonad.Util.EZConfig

main = do
  xmonad $ defaultConfig
    { modMask = mod4Mask -- Windows key
    } `additionalKeys`
    [ ((mod4Mask, xK_space), spawn "kupfer")
    ]
