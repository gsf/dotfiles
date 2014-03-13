xbindkeys
xrdb ~/.Xresources
xset -dpms
xset s off
pulseaudio --start
syndaemon -t -k -i 2 -d

# turn off touchscreen
xinput --set-prop 'eGalax Inc. eGalaxTouch EXC7903-16v07_Test6' 'Device Enabled' 0

# status bar with blinky parts to warn of low bat
flag=true
while true
do
  cap=`cat /sys/class/power_supply/BAT0/capacity`
  if $flag
  then
    flag=false
    attn=''
  else
    flag=true
    if [ $cap -le 10 ]; then
      attn='* '
    fi
  fi
  echo "\\r$attn$cap% `date +'%FT%R:%S%:z'` "
  sleep 1s
done | bar -f &

# mouse hiding
unclutter &

exec mcwm
