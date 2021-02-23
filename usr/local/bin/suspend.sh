
#!/bin/bash

export DISPLAY=:0

/sbin/cp /sys/class/leds/asus\:\:kbd_backlight/brightness /tmp/brightness_keyboard
/sbin/cp /sys/class/backlight/amdgpu_bl0/brightness /tmp/brightness_display
/sbin/echo 0 > /sys/class/leds/asus\:\:kbd_backlight/brightness

#/usr/bin/xrandr --output HDMI-A-0 --off
