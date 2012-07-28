xrdb .Xresources &
xmodmap -e "pointer = 1 2 3 5 4 6 7 8 9 10 11 12" &
xset -dpms &
xset s off &
while true; do
   xsetroot -name "`date +"%F %R"` `cat /proc/acpi/battery/BAT0/state | awk 'NR==5 {print $3$4}'`"
   sleep 1m
done &
exec dwm
