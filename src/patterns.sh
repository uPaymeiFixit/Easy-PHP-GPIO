#!/bin/bash
# while :; do

    # ROLL
    for i in {1..10}; do
        for i in 18 23 24 25; do
            echo "1" > /sys/class/gpio/gpio$i/value
            sleep 0.05
        done
        sleep 0.05
        for i in 18 23 24 25; do
            echo "0" > /sys/class/gpio/gpio$i/value
            sleep 0.05
        done
        sleep 0.05
    done

    # ALL OFF
    sleep 0.5
    for i in 18 23 24 25; do
        echo "1" > /sys/class/gpio/gpio$i/value
    done
    sleep 1

    # HOUSES STAGGER
    for i in {1..10}; do
        echo "1" > /sys/class/gpio/gpio24/value
        echo "0" > /sys/class/gpio/gpio25/value
        sleep 0.1
        echo "0" > /sys/class/gpio/gpio24/value
        echo "1" > /sys/class/gpio/gpio25/value
        sleep 0.1
    done

    # ALL OFF
    sleep 0.5
    for i in 18 23 24 25; do
        echo "1" > /sys/class/gpio/gpio$i/value
    done
    sleep 1

    # FAST
    for i in {1..30}; do
        for i in 18 23 24 25; do
            echo "1" > /sys/class/gpio/gpio$i/value
        done
        sleep 0.005
        for i in 18 23 24 25; do
            echo "0" > /sys/class/gpio/gpio$i/value
        done
        sleep 0.005
    done

    # ALL OFF
    sleep 0.5
    for i in 18 23 24 25; do
        echo "1" > /sys/class/gpio/gpio$i/value
    done
    sleep 1

# done
