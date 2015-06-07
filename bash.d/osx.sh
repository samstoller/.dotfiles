#########
## OSX ##
#########

## Homebrew ##
if type brew >/dev/null 2>&1; then

    # For things to work correctly we have to prepend the PATH
    if [ -f $(brew --prefix)/homebrew/php/php55 ]; then
	    PATH="$(brew --prefix homebrew/php/php55)/bin:/usr/local/bin:/usr/local/sbin:$PATH"
    fi
    
    if [ -f $(brew --prefix)/josegonzalez/php/php55 ]; then
	    PATH="$(brew --prefix josegonzalez/php/php55)/bin:/usr/local/bin:/usr/local/sbin:$PATH"
    fi

    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        source $(brew --prefix)/etc/bash_completion
    fi
fi

## Composer ##
if type composer >/dev/null 2>&1; then
    PATH="~/.composer/vendor/bin:$PATH"
fi

## Aliases ##

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Start ScreenSaver. This will lock the screen if locking is enabled.
alias afkss="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"
