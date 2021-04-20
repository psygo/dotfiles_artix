xset r rate 300 40
xset s off
xset -dpms
imwheel

pacman -Sy
transmission-daemon &
xmodmap ~/.Xmodmap

xmonad
