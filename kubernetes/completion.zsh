# Config some helper functions for sourcing completions

completions_base="$ZSH/cache"

function _generate_generic_k8s_completions() {
    test -z ${1} && return
    local local_completion_command="completion zsh"
    test -z ${2} && local_completion_command="${2}"
    if test $(which ${1})
    then
        echo "Generating ${1} completion file"
        ${1} ${local_completion_command} > "${completions_base}/_${1}"
    fi
}

function _regenerate_k8s_completions() {
    _generate_generic_k8s_completions kubectl
    _generate_generic_k8s_completions helm
    _generate_generic_k8s_completions stern "--completion zsh"

}


# Check for existing completions
#test -f "${completions_base}/_kubectl" || _generate_generic_k8s_completions kubectl
#test -f "${completions_base}/_helm" || _generate_generic_k8s_completions helm
#test -f "${completions_base}/_stern" || _generate_generic_k8s_completions stern "--completion zsh"
