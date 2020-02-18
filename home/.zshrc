# Path to oh-my-zsh installation (arch)
ZSH=/usr/share/oh-my-zsh/

ZSH_THEME="af-magic"

# Completion options
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"

# Disable because I want yay to manage it
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-autosuggestions)

# Autosuggestions options
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
export ZSH_AUTOSUGGEST_STRATEGY=(history)
#export ZSH_AUTOSUGGEST_COMPLETION_IGNORE=\
#'pacman -S*|sudo pacman*|'\
#'yay -S*|'\
#'man*|'\
#'systemctl*|'\
#'journalctl*'

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir -p $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh


# Personal settings unrelated to zsh
export VISUAL=nano
export EDITOR=nano

# fzf
. /usr/share/fzf/key-bindings.zsh
. /usr/share/fzf/completion.zsh

# Enter gpg passphrase through terminal shell
# This is required for signing commits through remote sessions
export GPG_TTY=$(tty)
