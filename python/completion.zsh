if test $(which pipenv)
then
    # Check for existing completions and generate if missing
    [[ -e "${ZSH}/python/_pipenv" ]] || pipenv --completion > "${ZSH}/python/_pipenv"
    # Source the completions file. pipe this from cat as sourceing the file alone
    # does not work as expected
    source <(cat ${ZSH}/python/_pipenv)
fi
