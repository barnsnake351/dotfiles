# Setup and configure pyenv hooks
if test $(which pyenv)
then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
