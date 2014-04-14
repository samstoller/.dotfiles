BASHD="$HOME/.bash.d"

[[ -d "$BASHD" ]] || return 1

## Source files and directories in .bash.d
for file in $BASHD/{opts,env,colors,aliases,python}; do
    [ -r "$file.sh" ] && [ -f "$file.sh" ] && source "$file.sh"
done

for file in $BASHD/{private,completions,prompt}/*.sh; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

## OSX
if [[ "$OSTYPE" =~ ^darwin ]]; then
    source $BASHD/osx.sh
fi
