#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
pgrep nm-applet >> /dev/null || nm-applet &
pgrep nm-applet >> /dev/null || volumeicon &
# batti &

/usr/bin/xset b off

xrdb -merge ~/.Xresources

