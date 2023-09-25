#          _
#  _______| |__  _ __ ___
# |_  / __| '_ \| '__/ __|
#  / /\__ \ | | | | | (__
# /___|___/_| |_|_|  \___|

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#
source "$HOME"/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme

[[ -f /usr/bin/virtualenvwrapper.sh ]] && source /usr/bin/virtualenvwrapper.sh
#source /usr/share/zsh/share/antigen.zsh

#To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
##[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
#source "$XDG_CONFIG_HOME"/zsh/dracula.zsh-theme
#source /home/malware/.config/zsh/hapin.zsh-theme
#source /home/maki/.config/zsh/honukai.zsh-theme
#source /home/maki/.config/zsh/typewritten/typewritten.zsh-theme
#source /home/maki/.config/zsh/minimal/minimal.zsh-theme
#source /home/maki/.config/zsh/materialshell/materialshell.zsh-theme
#source /home/maki/.config/zsh/punctual.zsh-theme
#source /home/maki/.config/zsh/lambda-mod.zsh-theme
#antibody bundle carloscuesta/materialshell

autoload -U colors && colors	# Load colors
#[[ "$COLORTERM" == (24bit|truecolor) || "${terminfo[colors]}" -eq '16777216' ]] || zmodload zsh/nearcolor
#autoload -U promptinit; promptinit
#prompt redhat

#export PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
#export PS1="\[\033[38;5;2m\]\u@\h\[$(tput sgr0)\]:\w\\$ \[$(tput sgr0)\]"
#PROMPT='%F{green}%n%f@%F{green}%m%f %F{green}%B%~%b%f %# '
#RPROMPT='[%F{yellow}%?%f]'

#setopt autocd
#History in cache directory:
#
#
#
SAVEHIST=9000000
HISTSIZE=9000000
HISTFILE="$HOME"/.cache/zshhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
#zstyle ':completion:*' menu gain-privileges 1
compinit
_comp_options+=(globdots)		#includes hiddenfiles


#Custom ZSH Binds
bindkey '^@' autosuggest-accept



[[ -f "$ZDOTDIR"/.aliasrc ]] && source "$ZDOTDIR"/.aliasrc

#export LF_ICONS="\
#tw=:\
#st=:\
#ow=:\
#dt=:\
#di=:\
#fi=:\
#ln=:\
#or=:\
#ex=:\
#*.c=:\
#*.cc=:\
#*.clj=:\
#*.coffee=:\
#*.cpp=:\
#*.css=:\
#*.d=:\
#*.dart=:\
#*.erl=:\
#*.exs=:\
#*.fs=:\
#*.go=:\
#*.h=:\
#*.hh=:\
#*.hpp=:\
#*.hs=:\
#*.html=:\
#*.java=:\
#*.jl=:\
#*.js=:\
#*.json=:\
#*.lua=:\
#*.md=:\
#*.php=:\
#*.pl=:\
#*.pro=:\
#*.py=:\
#*.rb=:\
#*.rs=:\
#*.scala=:\
#*.ts=:\
#*.vim=:\
#*.cmd=:\
#*.ps1=:\
#*.sh=:\
#*.bash=:\
#*.zsh=:\
#*.fish=:\
#*.tar=:\
#*.tgz=:\
#*.arc=:\
#*.arj=:\
#*.taz=:\
#*.lha=:\
#*.lz4=:\
#*.lzh=:\
#*.lzma=:\
#*.tlz=:\
#*.txz=:\
#*.tzo=:\
#*.t7z=:\
#*.zip=:\
#*.z=:\
#*.dz=:\
#*.gz=:\
#*.lrz=:\
#*.lz=:\
#*.lzo=:\
#*.xz=:\
#*.zst=:\
#*.tzst=:\
#*.bz2=:\
#*.bz=:\
#*.tbz=:\
#*.tbz2=:\
#*.tz=:\
#*.deb=:\
#*.rpm=:\
#*.jar=:\
#*.war=:\
#*.ear=:\
#*.sar=:\
#*.rar=:\
#*.alz=:\
#*.ace=:\
#*.zoo=:\
#*.cpio=:\
#*.7z=:\
#*.rz=:\
#*.cab=:\
#*.wim=:\
#*.swm=:\
#*.dwm=:\
#*.esd=:\
#*.jpg=:\
#*.jpeg=:\
#*.mjpg=:\
#*.mjpeg=:\
#*.gif=:\
#*.bmp=:\
#*.pbm=:\
#*.pgm=:\
#*.ppm=:\
#*.tga=:\
#*.xbm=:\
#*.xpm=:\
#*.tif=:\
#*.tiff=:\
#*.png=:\
#*.svg=:\
#*.svgz=:\
#*.mng=:\
#*.pcx=:\
#*.mov=:\
#*.mpg=:\
#*.mpeg=:\
#*.m2v=:\
#*.mkv=:\
#*.webm=:\
#*.ogm=:\
#*.mp4=:\
#*.m4v=:\
#*.mp4v=:\
#*.vob=:\
#*.qt=:\
#*.nuv=:\
#*.wmv=:\
#*.asf=:\
#*.rm=:\
#*.rmvb=:\
#*.flc=:\
#*.avi=:\
#*.fli=:\
#*.flv=:\
#*.gl=:\
#*.dl=:\
#*.xcf=:\
#*.xwd=:\
#*.yuv=:\
#*.cgm=:\
#*.emf=:\
#*.ogv=:\
#*.ogx=:\
#*.aac=:\
#*.au=:\
#*.flac=:\
#*.m4a=:\
#*.mid=:\
#*.midi=:\
#*.mka=:\
#*.mp3=:\
#*.mpc=:\
#*.ogg=:\
#*.ra=:\
#*.wav=:\
#*.oga=:\
#*.opus=:\
#*.spx=:\
#*.xspf=:\
#*.pdf=:\
#*.nix=:\
#"

#load ;
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 2> /dev/null

#source /usr/share/autojump/autojump.zsh 2>/dev/null
#source /usr/share/doc/pkgfile/command-not-found.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
#[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh


# Start SSH AGENT
#if ! pgrep -u "$USER" ssh-agent > /dev/null; then
#    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
#fi
#if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
#    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
#fi

#eval $(keychain --eval --quiet id_ed25519 ~/.ssh/makibyet101@gmail.com)
set viminfofile=$XDG_STATE_HOME/vim/viminfo

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
