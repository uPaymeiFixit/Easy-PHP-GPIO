#!/bin/bash

# If no setup file is found, we will set up GPIO
if [ ! -f /sys/class/gpio/gpio23/direction ]; then
    echo "SETUP";
    echo "23" > /sys/class/gpio/export;
    # This is necessary because `direction` is not created immediately
    sleep 0.2;
    echo "out" > /sys/class/gpio/gpio23/direction;
fi;

# Toggle the switch
if sudo grep -q "0" "/sys/class/gpio/gpio23/value"; then
    echo "1" > /sys/class/gpio/gpio23/value;
    echo "OFF";
else
    echo "0" > /sys/class/gpio/gpio23/value;
    echo "ON";
fi;
