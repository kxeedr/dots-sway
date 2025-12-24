#!/bin/bash
entries="Logout\nSuspend\nReboot\nShutdown"
selected=$(echo -e $entries | wofi --dmenu --prompt "Power Menu" --width 200 --height 250)

case $selected in
  Logout) swaymsg exit;;
  Suspend) systemctl suspend;;
  Reboot) reboot;;
  Shutdown) poweroff;;
esac
