# Setup and configure pyenv hooks
if ! type 'pyenv' 2>/dev/null | grep -q 'function'
then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
