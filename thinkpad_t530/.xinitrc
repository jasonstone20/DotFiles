setxkbmap -option terminate:ctrl_alt_bksp
#exec bspwm
xsetroot -name test
dwmstatus 2>&1 >/dev/null &
#trayer --expand true --widthtype request --transparent true --alpha 255 --edge bottom --align right &
#nm-applet &
#blueman-applet &
#pasystray &
#indicator-sound-switcher &
# setxkbmap -option escape:nocaps
xmodmap -e 'keycode 66 = Escape'
#while true
#do
#    VOL=$(amixer get Master | tail -1 | sed 's/.*\[\([0-9]*%\)\].*/\1/')
#    LOCALTIME=$(date +%Z\=%Y-%m-%dT%I:%M%p)
#    OTHERTIME=$(TZ=Europe/London date +%Z\=%H:%M)
#    IP=$(for i in `ip r`; do echo $i; done | grep -A 1 src | tail -n1) # can get confused if you use vmware
#    TEMP="$(($(cat /sys/class/thermal/thermal_zone0/temp) / 1000))C"
#
#    if acpi -a | grep off-line > /dev/null
#    then
#        BAT="Bat. $(acpi -b | awk '{ print $4 " " $5 }' | tr -d ',')"
#        xsetroot -name "$IP $BAT $VOL $TEMP $LOCALTIME $OTHERTIME"
#    else
#        xsetroot -name "$IP $VOL $TEMP $LOCALTIME $OTHERTIME"
#    fi
#    sleep 5s
#done &
#
#exec dwm
