# Merges public and private irssi settings
# Makes a new config file from the merge

if [ -e ~/.irssi.user ]; then

    # Make a backup of the old config file
    if [ -e ~/.irssi/config ]; then
        cp ~/.irssi/config ~/.irssi/config.bak
    fi

    # Merge the private + public
    cat ~/.irssi/config.public ~/.irssi.user > ~/.irssi/config

fi
