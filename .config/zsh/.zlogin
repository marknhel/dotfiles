#!/bin/sh
#	      _             _
#	  ___| | ___   __ _(_)_ __
#	 |_  / |/ _ \ / _` | | '_ \
#	  / /| | (_) | (_| | | | | |
#	 /___|_|\___/ \__, |_|_| |_|
#	              |___/

startdwl(){

    export BEMENU_OPTS="--fn 'Iosevka Nerd Font 14' --tf #bbbbbb --nf #bbbbbb --hf #eeeeee --hb #005577 --scf #005577 --prefix '>' --bottom"
	dwl -s somebar &
#	dwl > ~/.cache/dwltags
#	dwl -s dwlb &
#	dwl -s waybar &
#	somebar-sb &
	sudo ln -sf /usr/bin/bemenu /usr/local/bin/mymenu &

}
startdwm(){
	startx "$XINITRC" &
	sudo ln -sf /usr/local/bin/dmenu /usr/local/bin/mymenu &

}

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
#	startdwl
	startdwm
fi
