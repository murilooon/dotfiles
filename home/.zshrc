ZSH="/usr/share/oh-my-zsh/"
ZSH_CUSTOM="$HOME/.config/zsh/"
ZSH_THEME="lambda"
DISABLE_AUTO_UPDATE="false"
FZF_BASE="/usr/share/fzf"

plugins=(
    fzf
    git
    z
    cp
    sudo
    fancy-ctrl-z
)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
    mkdir $ZSH_CACHE_DIR
fi

[[ -f "$ZSH/oh-my-zsh.sh" ]] &&
    source $ZSH/oh-my-zsh.sh

[[ -f "$HOME/.zprofile" ]] &&
    source $HOME/.zprofile

[[ -f "$HOME/.zshenv" ]] &&
    source $HOME/.zshenv

[[ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] &&
    source "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"

[[ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] &&
    source "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[[ -f "$HOME/.config/broot/launcher/bash/br" ]] &&
    source "$HOME/.config/broot/launcher/bash/br"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
