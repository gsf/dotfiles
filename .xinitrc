xbindkeys
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
xset -dpms
xset s off
pulseaudio --start
while true; do
  xsetroot -name "`cat /sys/class/power_supply/BAT0/capacity`% `date +'%F %R'`"
  sleep 1m
done &
exec dwm
