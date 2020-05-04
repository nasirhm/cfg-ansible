#!/bin/sh -e

# Screenshot!
gnome-screenshot -f /tmp/screen_locked.png

# Blurring it.
convert /tmp/screen_locked.png -blur 0x6 /tmp/screen_locked.png

# Lock screen with blurred image
i3lock -i /tmp/screen_locked.png

# Turn the screen off after a delay of 120 ms.
sleep 120; pgrep i3lock && xset dpms force off
