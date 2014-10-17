#############
## .bashrc ##
#############

## This is where all of the core sourcing for bash is done.
## By default, sourcing is done from .bash.d/ in your home dir.
## The order of operations here is important so be concious
## of this when making changes to this script.

BASHD="$HOME/.bash.d"
[[ -d "$BASHD" ]] || return 1

# Source core files in .bash.d/ in a specific order
# (rather than bake the order into the filename)
for file in $BASHD/{opts,env,colors,paths,aliases}; do
    [ -r "$file.sh" ] && [ -f "$file.sh" ] && source "$file.sh"
done

# AWS
# Sourcing here is a based on the existence /etc/system-release
# If your instance doesn't have this file then you will need to change the algorithm here
if [ -e "/etc/system-release" ] && grep -q Amazon /etc/system-release; then
    source $BASHD/aws.sh
fi

# OSX
# Sourcing is based on the existence of a OSTYPE env var
if [[ "$OSTYPE" =~ ^darwin ]]; then
    source $BASHD/osx.sh
fi

# Source core dirs in .bash.d/ in a specific order
for file in $BASHD/{completions,prompt,tools}/*.sh; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done

# Source the host/ dir last
if [[ -d "$BASHD/host" ]]; then
    for file in $BASHD/host/*; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file"
    done
fi

unset file
