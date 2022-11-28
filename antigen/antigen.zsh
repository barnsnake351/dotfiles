# Source and load antigen
#

antigen_path="/opt/homebrew/share/antigen/antigen.zsh"
#antigen_path="/usr/local/opt/antigen/share/antigen/antigen.zsh"

if test -f "$antigen_path"
then
    source "${antigen_path}"
    antigen use oh-my-zsh
    antigen bundle pip
    antigen bundle lein
    antigen bundle command-not-found
    antigen bundle common-aliases
    antigen bundle git-extras
    antigen bundle git-flow

    antigen bundle zsh-users/zsh-syntax-highlighting

    antigen theme https://github.com/barnsnake351/spaceship-prompt spaceship

    antigen apply
fi

