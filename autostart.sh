#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
pgrep nm-applet >> /dev/null || nm-applet &
pgrep volumeicon >> /dev/null || volumeicon &
emacs -daemon >> /dev/null &
# batti &

/usr/bin/xset b off

xrdb -merge ~/.Xresources

