# Setup and configure pyenv hooks
#if ! type 'pyenv' 2>/dev/null | grep -q 'function'
#then
#    eval "$(pyenv init -)"
#    eval "$(pyenv virtualenv-init -)"
#fi

if [[ ! -o interactive ]]; then
    return
fi

compctl -K _pyenv pyenv

_pyenv() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(pyenv commands)"
  else
    completions="$(pyenv completions ${words[2,-2]})"
  fi

  reply=(${(ps:\n:)completions})
}
