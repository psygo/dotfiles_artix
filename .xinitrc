xset r rate 300 40
xset s off
xset -dpms
imwheel

pacman -Sy &
transmission-daemon &
xmodmap ~/.Xmodmap

exec ${HOME}/.xmonad/xmonad-x86_64-linux
