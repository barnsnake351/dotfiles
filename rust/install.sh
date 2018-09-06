#/bin/sh
# Configure and install rust via rustup-init
# Rustup installed via brew

rust_toolchains="stable nightly"
rustup_bin=${HOME}/.cargo/bin/rustup
rust_components="rust-src rust-docs rustfmt-preview"
rust_targets="x86_64-unknown-linux-gnu"
cargo_tools="rustfmt racer"

if [[ ! -e ${rustup_bin} ]]
then
    rustup-init -y --no-modify-path --default-toolchain stable
fi

if [[ -e ${rustup_bin} ]]
then
    ${rustup_bin} update
    ${rustup_bin} completions zsh > ${ZSH}/rust/_rustup
    ${rustup_bin} toolchain install nightly

    # Configure additional targets
    for rt in ${rust_targets}
    do
        ${rustup_bin} target add x86_64-unknown-linux-gnu
    done

    # Add additional toolchains
    for tc in ${rust_toolchains}
    do
        for cmp in ${rust_components}
        do
            [[ $(${rustup_bin} component list | grep ${cmp}) ]] || ${rustup_bin} component add ${cmp} --toolchain ${tc}
        done
    done

    # Setup and configure clippy from the nightly tool
    [[ $(${rustup_bin} run nightly cargo --list | grep clippy) ]] || ${rustup_bin} run nightly cargo install clippy

    # Install other tools
    for ct in ${cargo_tools}
    do
        [[ $(${rustup_bin} run stable cargo --list) ]] || ${rustup_bin} run stable cargo install ${ct}
    done
fi

unset rust_toolchain rustup_bin rust_components cargo_tools
