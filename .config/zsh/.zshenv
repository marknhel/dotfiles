#!/bin/sh
#          _
#  _______| |__   ___ _ ____   __
# |_  / __| '_ \ / _ \ '_ \ \ / /
#  / /\__ \ | | |  __/ | | \ V /
# /___|___/_| |_|\___|_| |_|\_/

export ZDOTDIR="$HOME"/.config/zsh
export BROWSER="brave"
export TERMINAL="st"
export EDITOR="nvim"
export STATUSBAR="dwmblocks"

[ -f "$ZDOTDIR/.location" ] &&  source "$ZDOTDIR/.location"


export PATH=${PATH}:"$HOME"/.local/bin
#statusbar
export PATH=${PATH}:"$HOME"/.local/bin/statusbar
#cron
export PATH=${PATH}:"$HOME"/.local/bin/cron
#scripts
export PATH=${PATH}:"$HOME"/.local/bin/scripts

#XDG
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share

# home folders
export XDG_VIDEOS_DIR="$HOME"/vids
export XDG_MUSIC_DIR="$HOME"/music
export XDG_PICTURES_DIR="$HOME"/pics
export XDG_DOCUMENTS_DIR="$HOME"/docs
export XDG_GIT_DIR="$HOME"/git
export XDG_TRASH_DIR="$HOME"/trash
export XDG_MOUNTPOINT_DIR="$HOME"/mnt
export XDG_OTHERS_DIR="$HOME"/others
export XDG_DOWNLOADS_DIR="$HOME"/downloads


#ADB
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android
export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android

#BASH
export HISTFILE="$XDG_DATA_HOME"/bash/history


#GNUPG
export GNUPGHOME="$XDG_DATA_HOME"/gnupg

#NCMPCPP
export ncmpcpp_directory="$HOME"/trash/ncmpcpp

#NPM
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc


#VSCODE
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode

#GTK2
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

#LESS
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

#WGET
export WGETRC="$XDG_CONFIG_HOME"/wget/wgetrc

#XAUTHORITY
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority

#XSERVER
export XINITRC="$XDG_CONFIG_HOME"/x11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/x11/xserverrc

#GPG

#Less
export LESSHISTFILE="$XDG_CACHE_HOME"/less/.lesshst

#GIT

#GNUPG

#Bluetooth Scanned Devices
export BTSCANNEDDEVS="$XDG_DATA_HOME"/.btscanneddevs

#Password Store
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass

#Go Path
export GOPATH="$XDG_DATA_HOME"/go

#Notmuch Config
export NOTMUCH_CONFIG="$XDG_CONFIG_HOME"/notmuch/notmuchrc

#Not Much Bug
export NMBGIT="XDG_DATA_HOME"/notmuch/nmbug

#Wine
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default

#Nintendo Roms Dir
export N64_ROMS_DIR="$HOME"/others/n64-roms

#Mplayer
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer

#Stardict Data
export STARDICT_DATA_DIR="$XDG_DATA_HOME"/stardict

## SSH_AUTH_SOCK
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR"/ssh-agent.socket
