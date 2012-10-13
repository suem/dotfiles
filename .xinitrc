#if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
#    eval `dbus-launch --sh-syntax --exit-with-session`
#fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


/usr/bin/xset b off

xrdb -merge ~/.Xresources

#exec dbus-launch i3
exec dbus-launch awesome
#exec ck-launch-session dbus-launch awesome
# exec ck-launch-session dbus-launch openbox-session
# exec ck-launch-session dbus-launch gnome-session
