######################
## Environment Vars ##
######################

## Colorizations & Pagers
export CLICOLOR=1
export GREP_OPTIONS="--color=always"  # never/auto
export MANPAGER="less -X"

## Editors
if type subl >/dev/null 2>&1; then
    export EDITOR="subl -w"
else
    export EDITOR="vim"
fi

export VISUAL=$EDITOR
export SVN_EDITOR="vim"

## Term
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export TERM=xterm-256color  # detection?

## Default hostname for prompt
PS1HOST="$(hostname)"
