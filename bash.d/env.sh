######################
## Environment Vars ##
######################

## Colorizations & Pagers
export CLICOLOR=1
export GREP_OPTIONS="--color=always"  # never/auto
export MANPAGER="less -X"
#export LESS=-XR
export LESS="-Xr --prompt=?f%f %lb %L - %db/%D [%bb / %B bytes]"
export LESS_TERMCAP_mb=$'\E[01;31m'        # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'   # begin bold
export LESS_TERMCAP_me=$'\E[0m'            # end mode
export LESS_TERMCAP_se=$'\E[0m'            # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'     # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'            # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m'  # begin underline

## Editors
export EDITOR="subl -w"  # sublime text
export VISUAL=$EDITOR
export SVN_EDITOR="vim"

## Term
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export TERM=xterm-256color  # detection?
