#!/bin/bash
# Stuff to be run at startup.
volumeicon &
nm-applet &
picom --experimental-backends &
walp &
qtile cmd-obj -o cmd -f restart
