#############
## Aliases ##
#############

## Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

## OSX
if [[ "$OSTYPE" =~ ^darwin ]]; then
    
    ## Logs
    alias err-php="tail -F $HOME/Library/Logs/"
    
    ## XBMC
    alias xbox="open /Applications/XBMC.app"
    function xlog() {
        tail -"$1" $HOME/Library/Logs/xbmc.log
    }
    function xglo() {
        grep -i "$1" $HOME/Library/Logs/xbmc.log
    }

    if type ggrep >/dev/null; then
        alias grep='ggrep '
    fi

## Linux
elif [[ "$OSTYPE" =~ ^linux ]]; then
  
    ## Logs
    alias err-php="tail -F /var/log/php_errors.log"
fi

## Cmd Shortcuts
alias c="clear"
alias la="ls -a"
alias ll="ls -al"
alias findf="find . -type f -iname "
alias findd="find . -type d -iname "
alias psg="ps aux | grep "
alias srpm="rpm -qa | grep -i "
alias whois="whois -h whois-servers.net"

## Tools
alias gz='tar -zcvf'
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

## Enable aliases to be sudo’ed
#alias sudo='sudo '

## Git Aliases (see also...)
alias gits='git '
alias go='git checkout '