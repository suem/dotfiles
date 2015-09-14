#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
pgrep nm-applet >> /dev/null || nm-applet &
pgrep batterymon >> /dev/null || batterymon -t numix &
pgrep volumeicon >> /dev/null || volumeicon &
pgrep dropboxd >> /dev/null || dropboxd &
pgrep xcape >> /dev/null || xcape &
# pgrep qxkb >> /dev/null || qxkb &
# pgrep chromium >> /dev/null || ~/scripts/chromium-mail.sh &
pgrep thunderbird >> /dev/null || thunderbird &
#pgrep firefox >> /dev/null || firefox &


/usr/bin/xset b off

xrdb -merge ~/.Xresources

