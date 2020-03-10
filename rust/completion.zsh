# Configure helper functions for rust

completions_base="$HOME/.cache"
[[ ! -d "${completions_base}" ]] && mkdir -p "${completions_base}"

function _regenerate_rust_completions() {
    _generate_rustup_completions
}

function _generate_rustup_completions() {
    [[ $(which rustup) ]] || return 0
    echo "Generating rustup completion file"
    rustup completions zsh > "${completions_base}/_rustup.completions"
}

[[ -e "${completions_base}/_rustup.completions" ]] || _generate_rustup_completions
if [[ $(which rustup) ]] && [[ ! $(which _rustup) ]]
then
    source $completions_base/_rustup.completions
fi
