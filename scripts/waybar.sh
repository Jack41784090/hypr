#!/bin/bash
if pgrep -x waybar > /dev/null; then
    # If Waybar is running, send the safe reload signal
    killall -SIGUSR2 waybar
else
    # If Waybar is NOT running (crashed or killed), start it
    waybar &
fi