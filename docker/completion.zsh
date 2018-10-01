_docker_completions_src_base="/Applications/Docker.app/Contents/Resources/etc"
_docker_completions_base="${ZSH}/cache"
_docker_bins="docker docker-compose docker-machine"

function _regenerate_docker_completions() {
    for i in $_docker_bins
    do
        if [[ -e "${_docker_completions_src_base}/${i}.zsh-completion" ]]
        then
            echo "Updating ${i} completions..."
            ln -fs "${_docker_completions_src_base}/${i}.zsh-completion" "${_docker_completions_base}/_${i}"
        fi
    done
}

for i in $_docker_bins
do
    [[ -e "${_docker_completions_base}/_${i}" ]] || _regenerate_docker_completions
done
