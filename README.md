xmonad configuration
====================
My personal xmonad configuration.

Installation on Arch Linux
--------------------------
```sh
pacman -S xmonad xmonad-contrib xmobar dmenu
cd ~/.config
git clone https://github.com/thuetz/xmonad-config.git
cd ~
ln -s ~/.config/xmonad-config .xmonad
xmonad --recompile
```
