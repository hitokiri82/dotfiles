# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="dstufft"
ZSH_THEME="agnoster"

DEFAULT_USER="fcaraballo"

export WORKON_HOME=~/virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=~/virtualenv

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git virtualenv virtualenvwrapper pip django command-not-found fabric docker kubectl zsh-syntax-highlighting) 
plugins=(git virtualenv virtualenvwrapper pip django command-not-found fabric docker kubectl gcloud) 

source $ZSH/oh-my-zsh.sh
source $ZSH/plugins/history-substring-search/history-substring-search.zsh

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Customize to your needs...
export PATH=$PATH:/home/fcaraballo/bin:/home/fcaraballo/local/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/fcaraballo/.local/bin

sshcyb() { ssh '130.117.110.'$* }
sshtunnel() { ssh -L $2':'$1':'$2 $1 }
sshcybtunnel() { ssh -L $2':130.117.110.'$1':'$2 '130.117.110.'$1 }

sshgcp() { gcloud beta compute ssh --zone "europe-west1-b" --project "cyberfonica-prod" "$1" }

alias talkelog='adb logcat --pid=`adb shell pidof -s com.talkeapp.app`'

loadenv() { export $(cat $1 | xargs) }

alias wireshark='LIBOVERLAY_SCROLLBAR=0 wireshark'
alias ls='ls -alh'
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/home/fcaraballo/.sdkman"
#[[ -s "/home/fcaraballo/.sdkman/bin/sdkman-init.sh" ]] && source "/home/fcaraballo/.sdkman/bin/sdkman-init.sh"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export ANDROID_HOME=/home/fcaraballo/android_sdk

export IBUS_ENABLE_SYNC_MODE=1

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/fcaraballo/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/fcaraballo/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/fcaraballo/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /home/fcaraballo/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /home/fcaraballo/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /home/fcaraballo/.nvm/versions/node/v6.9.1/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
