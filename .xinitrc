#if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
#    eval `dbus-launch --sh-syntax --exit-with-session`
#fi

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


# test for an existing bus daemon, just to be safe
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
	# if not found, launch a new one
	eval `dbus-launch --sh-syntax --exit-with-session`
	echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
fi



/usr/bin/xset b off

xrdb -merge ~/.Xresources

#exec dbus-launch i3
exec dbus-launch awesome
#exec ck-launch-session dbus-launch awesome
# exec ck-launch-session dbus-launch openbox-session
# exec ck-launch-session dbus-launch gnome-session
