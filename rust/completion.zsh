# Configure helper functions for rust

rust_completions_base="${ZSH}/rust"

function _regenerate_rust_completions() {
    _generate_rustup_completions
}

function _generate_rustup_completions() {
    [[ $(which rustup) ]] || return 0
    echo "Generating rustup completion file"
    rustup completions zsh > "${rust_completions_base}/_rustup"
}

[[ -e "${rust_completions_base}/_rustup" ]] || _generate_rustup_completions
