import XMonad
import XMonad.Util.EZConfig ( additionalKeys )

-- define the mod mask as a variable to be used in the keybindings and the basic settings as well 
myModMask = mod4Mask

-- define the list of my custom key bindings to add to xmonad
myKeyBindings = 
	[
		( ( myModMask,  xK_r ), spawn "dmenu_run" ),
		( ( myModMask .|. shiftMask,  xK_l ), spawn "xlock -mode forest" ),
		( ( myModMask,  xK_Return ), spawn "terminator" )
	]

-- configure the main behavior
main = xmonad $ defaultConfig {
	-- set the default terminal emulator
	terminal = "terminator",

	-- set the meta key used for the xmonad commands
	modMask = myModMask,

	-- set the border for the windows which are open
	borderWidth = 0
} `additionalKeys` myKeyBindings
