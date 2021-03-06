#!/bin/zsh
#if type 'pyenv' 2>/dev/null | grep -q 'function'
if [ $(which pipenv) ]
then
    # Check for existing completions and generate if missing
    [[ -e "${ZSH}/cache/_pipenv" ]] || pipenv --completion > "${ZSH}/cache/_pipenv"
    # Source the completions file. pipe this from cat as sourcing the file alone
    # does not work as expected
    #source <(cat ${ZSH}/cache/_pipenv)
fi
