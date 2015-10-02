xmonad configuration
====================
My personal xmonad configuration.

Installation on Arch Linux
--------------------------
```sh
pacman -S xmonad xmonad-contrib xmobar dmenu zenity
cd ~/.config
git clone https://github.com/thuetz/config-xmonad.git
cd ~
ln -s ~/.config/config-xmonad .xmonad
xmonad --recompile
```
