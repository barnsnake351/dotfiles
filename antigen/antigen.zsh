# Source and load antigen
#

antigen_path="/usr/local/opt/antigen/share/antigen/antigen.zsh"

if test -f "$antigen_path"
then
    source "${antigen_path}"
    antigen use oh-my-zsh
    antigen bundle aws
    antigen bundle git
    antigen bundle pip
    antigen bundle lein
    antigen bundle kubectl
    antigen bundle iterm2
    antigen bundle command-not-found
    antigen bundle autojump
    antigen bundle common-aliases
    antigen bundle git-extras
    antigen bundle git-flow

    antigen bundle zsh-users/zsh-syntax-highlighting
    antigen bundle zsh-users/zsh-completions

    antigen theme https://github.com/barnsnake351/spaceship-prompt spaceship

    antigen apply
fi

