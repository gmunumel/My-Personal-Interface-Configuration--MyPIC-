# {{{ Log settings
errorlog="$HOME/.xsession-errors"
 
# Start with a clean log file every time
if ( cp /dev/null "$errorlog" 2> /dev/null ); then
    chmod 600 "$errorlog"
        exec > "$errorlog" 2>&1

fi
# }}}

# {{{ Start aplications
mpd /home/alucard/.mpd/config/mpd.conf &
xbindkeys &
xmodmap ~/.xmodmaprc
# }}}

# {{{ Sessions
DEFAULT_SESSION=dwm
 
case $1 in
  gnome) exec gnome-session ;;
  scrotwm) 
    $HOME/scripts/dzconkyScrotwm
    awsetbg -f /home/alucard/Imagenes/Dizorb_Beam_Me_Up_Scotty_HD-Wallpaper.jpg
    xcompmgr -c -t-5 -l-5 -r4.2 -o.55 & 
    xsetroot -cursor_name left_ptr
    exec scrotwm ;;
  ratpoison) exec ratpoison ;;
  xmonad) 
  	$HOME/scripts/dzconkyScrotwm
 	awsetbg -f /home/alucard/Imagenes/ian-o-phelan-1280x800.jpg
	xcompmgr -c -t-5 -l-5 -r4.2 -o.55 & 
	xsetroot -cursor_name left_ptr
  	exec xmonad ;;
  awesome) exec awesome ;;
  blackbox) exec blackbox ;;
  fluxbox) 
    exec startfluxbox ;;
  dwm) 	
    $HOME/scripts/dzconkyDwm
	awsetbg -f /home/alucard/Imagenes/Carbon_Cube.png
    xcompmgr -c -t-5 -l-5 -r4.2 -o.55 & 
    #(sleep 1 && /usr/bin/ck-launch-session) &  # do this before nm-applet... I don't know why
	#(sleep 1 && /usr/bin/nm-applet) &
	#while true
	#do
   	#	xsetroot -name "$(date +"%F %r")"
   	#	sleep 1m    # Update time every minute
	#done &	
	exec dwm ;;
  openbox) 
    exec openbox-session ;;
  *) exec $DEFAULT_SESSION ;;
esac
# }}}
