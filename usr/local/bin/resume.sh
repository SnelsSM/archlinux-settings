
#!/bin/bash

charge_treshold=60

charge_control() {
    echo $charge_treshold > /sys/class/power_supply/BAT0/charge_control_end_threshold
}

if [[ "$1" == "charge" ]]; then
    charge_control
else
    charge_control
    /sbin/cat /tmp/brightness_keyboard > /sys/class/leds/asus\:\:kbd_backlight/brightness
    /sbin/cat /tmp/brightness_display > /sys/class/backlight/amdgpu_bl0/brightness
fi
