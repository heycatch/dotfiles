setxkbmap -layout "us,ru"
setxkbmap -option "grp:alt_shift_toggle,grg_led:scroll"

xrdb -merge ~/.Xresources
exec /usr/bin/xmonad
export PATH=~/bin:$PATH
