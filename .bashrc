#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'

# Set PS1 Variable (primary prompt displayed before each command)
# old 
#PS1='[\u@\h \W]\$'
# new 
PS1='\[\033[38;5;38m\]\A\[\]\[\033[38;5;15m\] \[\]\[\033[38;5;38m\][\[\]\[\033[38;5;252m\]\u\[\]\[\033[38;5;38m\]@\[\]\[\033[38;5;252m\]\h\[\]\[\033[38;5;38m\].\[\]\[\033[38;5;15m\]\w\[\]\[\033[38;5;38m\]]\[\]\[\033[38;5;15m\] \$ \[\]'

# Set default editors
export VISUAL=vim
export EDITOR=vim

# Environment variables for 'less' colors
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold / blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# Wrapper of man, using 'less' for colors
man()  {
	LESS_TERMCAP_md=$'\e[01;31m' \
	LESS_TERMCAP_me=$'\e[0m' \
	LESS_TERMCAP_se=$'\e[0m' \
	LESS_TERMCAP_so=$'\e[01;44;33m' \
	LESS_TERMCAP_ue=$'\e[0m' \
	LESS_TERMCAP_us=$'\e[01;32m' \
	command man "$@"
}

# source highlighting for less
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '

# Virtual console
#if [ "$TERM" = "linux" ]; then
#	_SEDCMD='s/.*\*color\([0-9]\{1,\}\).*#\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
#	for i in $(sed -n "$_SEDCMD" $HOME/.XResources | awk '$1 < 16 {printf "\\e]P%X%s", $1, $2}'); do
#		echo -en "$i"
#	done
#	clear
#fi

# Line wrap on window resize
shopt -s checkwinsize

# Set ignore EOF variable
export IGNOREEOF=100

# Tab completion per command
complete -c man which
