# source global definiton but only if not OSX
# OSX sources in /etc/profile !
#if [ "$OSTYPE" =~ ^darwin && -f /etc/bashrc ]; then
#    source /etc/bashrc
#fi
BASHD="$HOME/.bash.d"

[[ -d "$BASHD" ]] || return 1

## Source files and directories in .bash.d
for file in $BASHD/{opts,env,colors,aliases}; do
    [ -r "$file.sh" ] && [ -f "$file.sh" ] && source "$file.sh"
done

for file in $BASHD/{private,completions,prompt,tools}/*.sh; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

## OSX
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [[ "$OSTYPE" =~ ^darwin ]]; then
    source $BASHD/osx.sh
fi
