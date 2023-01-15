#!/bin/sh
#       _             _
#   ___| | ___   __ _(_)_ __
#  |_  / |/ _ \ / _` | | '_ \
#   / /| | (_) | (_| | | | | |
#  /___|_|\___/ \__, |_|_| |_|
#               |___/
#startx
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	startx $XINITRC
fi
