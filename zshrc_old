export PATH=$PATH:$HOME/bin:$HOME/local/bin:$HOME/.local/bin:$HOME/flutter/bin:$HOME/flutter/.pub-cache/bin:$HOME/Android/Sdk/platform-tools:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

DEFAULT_USER="fcaraballo"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git virtualenv virtualenvwrapper pip aws command-not-found docker docker-compose history-substring-search)

source $ZSH/oh-my-zsh.sh

source $ZSH/plugins/history-substring-search/history-substring-search.zsh
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

export LESS=-FR

export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
export WORKON_HOME=$HOME/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=$HOME/virtualenv

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export ANDROID_HOME=/home/fcaraballo/android_sdk

export IBUS_ENABLE_SYNC_MODE=1

sshtunnel() { ssh -L $2':'$1':'$2 $1 }
loadenv() { export $(cat $1 | xargs) }
alias ls='ls -alh'
alias wireshark='LIBOVERLAY_SCROLLBAR=0 wireshark'
