xrdb .Xresources &
xset -dpms &
xset s off &
while true; do
   xsetroot -name "$(date +"%F %R")"
   sleep 1m
done &
exec dwm
