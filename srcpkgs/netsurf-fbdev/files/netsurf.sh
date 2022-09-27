#!/bin/sh
# Start netsurf in landscape 640x480 mode
# Use touchscreen as main input (no mouse)
# Make sure you first calibrate the touchscreen for landscape mode using:
# TSLIB_TSDEVICE=/dev/input/event2 ts_calibrate -r 1
export TSLIB_TSDEVICE=/dev/input/event2
export SDL_VIDEO_FBCON_ROTATION=CW
export SDL_MOUSEDRV=TSLIB
export SDL_MOUSEDEV=$TSLIB_TSDEVICE
/usr/bin/netsurf-fb -V /var/log/netsurf.log --ca-bundle /etc/ssl/certs.pem  "$@"
