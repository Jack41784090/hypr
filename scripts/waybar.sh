if pgrep -x waybar > /dev/null; then
    kill $(pgrep -x waybar); waybar &
else
    waybar &
fi