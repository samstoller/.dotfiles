#############
## Aliases ##
#############

## Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## Cmd Shortcuts
alias c="clear"
alias ca="clear && ls -a"
alias cl="clear && ls -al"
alias la="ls -a"
alias ll="ls -al"
alias findf="find . -type f -iname "
alias findd="find . -type d -iname "
alias psg="ps aux | grep "
alias srpm="rpm -qa | grep -i "
alias whois="whois -h whois-servers.net"

## Enable aliases to be sudo’ed
alias sudo='sudo '

## Tools
alias gz="tar -zcvf"
alias ugz="tar -xvf"
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Colorized diff
if type grc >/dev/null 2>&1; then
    alias diff="grc diff"
elif type colordiff >/dev/null 2>&1; then
    alias diff="colordiff"
fi

# GNU grep (for color in OSX)
if type ggrep >/dev/null 2>&1; then
    alias grep='ggrep '
fi

## Git Aliases (see also: gitconfig)
alias gits='git '
alias go='git checkout '
