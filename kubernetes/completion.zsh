# Configure some helper functions for sourcing completions

k8s_base="${ZSH}/kubernetes/"

function _regenerate_k8s_completions() {
    _generate_kubectl_completions
    _generate_helm_completions
    _generate_stern_completions
}

function _generate_kubectl_completions() {
    if [[ $(which kubectl) ]]
    then
        echo "Generating kubectl completion file"
        kubectl completion zsh > "${k8s_base}/_kubectl"
    fi
}

function _generate_stern_completions() {
    if [[ $(which stern) ]]
    then
        echo "Generating stern completion file"
        stern --completion zsh > "${k8s_base}/_stern"
    fi
}
function _generate_helm_completions() {
    if [[ $(which helm) ]]
    then
        echo "Generating helm completion file"
        helm completion zsh > "${k8s_base}/_helm"
    fi
}

# Check for existing completions
[[ -e "${k8s_base}/_kubectl" ]] || _generate_kubectl_completions
[[ -e "${k8s_base}/_stern" ]] || _generate_stern_completions
[[ -e "${k8s_base}/_helm" ]] || _generate_helm_completions
