#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
pgrep wicd-client >> /dev/null || wicd-client -t &
pgrep nm-applet >> /dev/null || volumeicon &
emacs -daemon >> /dev/null &
# batti &

/usr/bin/xset b off

xrdb -merge ~/.Xresources

