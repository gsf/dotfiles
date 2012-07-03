xrdb .Xresources &
xset -dpms &
xset s off &
while true; do
   xsetroot -name "`date +"%F %R"` `acpi -b |tr -d ','|awk '{print $4}'`"
   sleep 1m
done &
exec dwm
