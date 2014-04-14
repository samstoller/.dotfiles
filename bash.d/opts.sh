###################
## Shell Options ##
###################

## 'man bash' for descriptions
shopt -s cdable_vars
shopt -s cdspell
shopt -s extglob

## History
export HISTSIZE=10000
export HISTFILESIZE=$HISTSIZE
export HISTTIMEFORMAT="[%F %T] "                       # timestamps
export HISTCONTROL="ignorespace:erasedups"             # ignore ^\s and duplicates
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"  # ignore commands
shopt -s histappend
shopt -s histreedit

## Perms
umask 022