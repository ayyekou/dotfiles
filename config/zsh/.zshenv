export ZDOTDIR="$HOME/.config/zsh"
export PATH="$PATH:$(du "$HOME/scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# global variables
export BROWSER="firefox"
export EDITOR="nvim"
export FILE="nnn"
export IMAGE="sxiv"
export MEDIA="mpv"
export PAGER="less"
export READER="zathura"
export TERMINAL="st"
export VISUAL="nvim"

# n³ file explorer
export NNN_OPENER="open"
export NNN_FIFO="/tmp/nnn.fifo"
