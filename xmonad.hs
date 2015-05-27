import XMonad
import XMonad.Util.EZConfig ( additionalKeys )
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ManageDocks

-- define the mod mask as a variable to be used in the keybindings and the basic settings as well 
myModMask = mod4Mask

-- define the list of my custom key bindings to add to xmonad
myKeyBindings = 
	[
		( ( myModMask,  xK_r ), spawn "dmenu_run" ),
		( ( myModMask .|. shiftMask,  xK_l ), spawn "xlock -mode forest" ),
		( ( myModMask,  xK_Return ), spawn "terminator" ),
		( ( 0, 0x1008ff03 ), spawn "terminator" ), -- brightness down
		( ( 0, 0x1008ff02 ), spawn "terminator" ), -- brightness up
		( ( 0, 0x1008ff4a ), spawn "terminator" ) -- toggle the tray and the xmobar
	]

-- configure the main behavior
main = xmonad $ defaultConfig {
	-- set the default terminal emulator
	terminal = "terminator",

	-- set the meta key used for the xmonad commands
	modMask = myModMask,

	--
	manageHook = manageDocks <+> manageHook defaultConfig,

	--
	layoutHook = avoidStruts  $  layoutHook defaultConfig,

	-- set a custom window manager name to help some apps to deal with xmonad
	startupHook = setWMName "LG3D",

	-- set the border for the windows which are open
	borderWidth = 0
} `additionalKeys` myKeyBindings
