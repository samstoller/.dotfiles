#######################################################################
## Host-specific Shell File                                          ##
##                                                                   ##
## This is an example of a shell file located in host/ that will     ##
## automatically be sourced at login.                                ##
##                                                                   ##
## It is intended for host-specific settings and secrets that need   ##
## to be sourced in addition to the global files.                    ##
##                                                                   ##
#######################################################################

## For example, AWS keys:
export AWS_SECRET_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxx
export AWS_ACCESS_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxx

## Or host-specific commands:
alias internal_ssh="ssh -l xbmc 192.168.0.125"

## Or host-specific paths:
CDPATH=".:$HOME/Desktop:$HOME/Development"
XBMCADDONS="$HOME/Library/Application\ Support/XBMC/addons"
export xbmcaddons=$XBMCADDONS
