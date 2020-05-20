#dwmstatus 2>&1 >/dev/null &
slstatus 2>&1 >/dev/null &
#trayer --expand true --widthtype request --transparent true --alpha 0 --edge bottom --align right &
##trayer --expand true --widthtype request --transparent true --alpha 127 --edge bottom --align right --tint ff000000 &
nm-applet &
blueman-applet &
pasystray &
#qasmixer -t &
#guake &                 
indicator-sound-switcher &
xfsettingsd &
#xbindkeys_autostart &
xfce4-volumed &
xfce4-power-manager &
fluxgui &
#screenkey &
indicator-cpufreq &
xscreensaver -no-splash &
buckle 2>&1 >/dev/null & 
#compton -bcCGf -i 0.8 -e 0.8 --no-fading-openclose --sw-opti &
compton -i 0.8 -e 0.94 -b --backend glx --paint-on-overlay --vsync opengl-swc --focus-exclude "x = 0 && y = 0 && override_redirect = true" &
#xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Natural Scrolling Enabled' 1
xinput set-prop 'Logitech USB Receiver Mouse' 'libinput Natural Scrolling Enabled' 0
xinput set-prop 'TPPS/2 IBM TrackPoint' 'libinput Natural Scrolling Enabled' 0
xinput disable 'SynPS/2 Synaptics TouchPad'
#xmodmap -e "remove lock = Caps_Lock" & # turn off Caps_Lock
#setxkbmap -option ctrl:nocaps & # Change Caps_Lock to Control
setxkbmap -option terminate:ctrl_alt_bksp
xmodmap -e 'keycode 66 = Escape' &  #change Caps_Lock to Escape

##sleep 60 && changercron
feh -x --bg-scale ~/world.jpg || notify-send -t 5000 " Error Setting Background "
