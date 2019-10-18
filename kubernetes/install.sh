#!/bin/zsh

completions_base="$ZSH/cache"

function _generate_generic_k8s_completions() {
    [[ -z ${1} ]] && return
    local local_completion_command="completion zsh"
    [[ -z ${2} ]] || local_completion_command="${2}"
    if test $(which ${1})
    then
        echo "Generating ${1} completion file"
        echo "${1} ${local_completion_command}"
        ${1} ${=local_completion_command} > "${completions_base}/_${1}"
    fi
}

# Reset the completions file in the event a new version was installed via Brew
if [[ -d ${ZSH}/kubernetes ]]
then
    _generate_generic_k8s_completions kubectl
    _generate_generic_k8s_completions helm
    _generate_generic_k8s_completions stern "--completion zsh"
fi
