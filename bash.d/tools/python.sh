## Virtualenvwrapper
export WORKON_HOME=~/.virtualenvs
export PROJECT_HOME=~/Development/python
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true

if [[ `which virtualenvwrapper.sh` ]]; then
    source `which virtualenvwrapper.sh`
fi

menuvirtualenv() {
    select env in `lsvirtualenv -b`; do
        if [ -n "$env" ]; then
            workon "$env"
        fi;
        break;
    done;
}
alias mypy='menuvirtualenv'
