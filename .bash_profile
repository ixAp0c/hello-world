#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Set bin path
export PATH="${PATH}:/home/ap0c/bin"

# Start X session from Xinitrc
#if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
#  startx
#fi
