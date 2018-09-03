# Configure kubernetes autocompletion
#

[[ $(which kubectl) ]] || return 0

completion=$(kubectl completion zsh)

if test -f $completion
then
    source $completion
fi
