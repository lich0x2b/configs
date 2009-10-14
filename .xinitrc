setxkbmap -option terminate:ctrl_alt_bksp
setxkbmap -layout ro
xset +fp "/usr/share/fonts/local"
xset -dpms -b s off &
xrandr --output LVDS --off
xrandr --output VGA-0 --mode 1280x1024 --dpi 96x96
xsetroot -display :0.0 -cursor_name left_ptr &
hsetroot -solid "#101010" &
#xcompmgr &
#xcompmgr -cCfF -t-5 -l-5 -r4.2 -o.55 -D6 &
xscreensaver -no-splash &

# -- SCIM --
export XMODIFIERS=@im=SCIM
export GTK_IM_MODULE=scim
export QT_IM_MODULE=scim
scim -d
#LANG=ja_JP.utf8
# -- END SCIM --

conky-dzen.sh &
ratpoison
