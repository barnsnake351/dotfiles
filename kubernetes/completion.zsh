# Configure kubernetes autocompletion
#

[[ $(which kubectl) ]] || return 0

kube_completions=$(kubectl completion zsh)

if test -f $kube_completions
then
    source $kube_completions
fi
