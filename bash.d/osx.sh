#########
## OSX ##
#########

## Homebrew ##
if type brew >/dev/null 2>&1; then

    # For things to work correctly we have to prepend the PATH
    PATH="$(brew --prefix josegonzalez/php/php54)/bin:/usr/local/bin:/usr/local/sbin:$PATH"

    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        source $(brew --prefix)/etc/bash_completion
    fi
fi    

## Aliases ##

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Start ScreenSaver. This will lock the screen if locking is enabled.
alias afkss="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"
