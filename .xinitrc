xbindkeys
xrdb ~/.Xresources
xmodmap ~/.Xmodmap
xset -dpms
xset s off
pulseaudio --start
while true; do
  xsetroot -name "`date -u +'%FT%R:%SZ'`"
  sleep 1s
done &
conky
exec dwm
