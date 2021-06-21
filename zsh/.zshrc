# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#export ZSH=/home/jonathan/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"

# ORDER
SPACESHIP_PROMPT_ORDER=(
  time     #
  user     # before prompt char
  host     #
  char
  dir
  git
  node
  ruby
  # kubectl
  xcode
  swift
  golang
  docker
  venv
  pyenv
)
SPACESHIP_VI_MODE_SHOW=false

# USER
SPACESHIP_USER_PREFIX="" # remove `with` before username
SPACESHIP_USER_SUFFIX="" # remove space before host

# HOST
# Result will look like this:https://manjaro.org/
#   username@:(hostname)
SPACESHIP_HOST_PREFIX="@:("
SPACESHIP_HOST_SUFFIX=") "

# DIR
SPACESHIP_DIR_PREFIX='' # disable directory prefix, cause it's not the first section
SPACESHIP_DIR_TRUNC='1' # show only last directory

#KUBERNETES
# SPACESHIP_KUBECTL_SHOW=true
# SPACESHIP_KUBECTL_SYMBOL
# SPACESHIP_KUBECTL_VERSION_SHOW=false
# SPACESHIP_KUBECTL_VERSION_PREFIX
# SPACESHIP_KUBECONTEXT_SHOW=true
# SPACESHIP_KUBECONTEXT_NAMESPACE_SHOW=true
# SPACESHIP_KUBECTL_SHOW=true
# SPACESHIP_KUBECTL_VERSION_SHOW=false
# SPACESHIP_KUBECONTEXT_SHOW=true

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-nvm git z you-should-use kubectl fzf zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source /home/jonathan/dotfiles/zsh/.env

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Fun ALIASES
alias fish="/usr/local/bin/asciiquarium"

# TMUXINATOR ALIASES
alias workFE="tmuxinator workFE"
alias workBE="tmuxinator workBE"
alias dfiles="tmuxinator df"
alias pcstatus="tmuxinator pcstatus"
alias workProd="tmuxinator workProd"

# SYSTEM ALIASES LINUX
alias update="sudo apt update && sudo apt upgrade"
alias fuck='sudo $(fc -ln -1)'
# alias fuck="sudo !!"
alias dpcode="code && devilspie"
alias dpInsiders="code-insiders && devilspie"
alias bat="batcat"
alias c="clear"

# POSTGRES ALIASES
alias pg_status="sudo service postgresql status"
alias pg_start="sudo service postgresql start"
alias pg_stop="sudo service postgresql stop"
alias pg_restart="sudo service postgresql restart"

# REDIS ALIASES
alias redis_status="sudo systemctl status redis"
alias redis_restart="sudo systemctl restart redis.service"
alias redis_start="sudo systemctl start redis"
alias redis_stop="sudo systemctl stop redis"

# DOCKER ALIASES
alias d="docker"
alias docker_start="sudo systemctl start docker"
alias docker_status="sudo systemctl status docker"
alias docker_stop="sudo systemctl stop docker"
alias dcu="docker-compose up"
# alias dcu="docker compose up"
alias dcud="docker-compose up -d"
# alias dcud="docker compose up -d"
alias dcd="docker-compose down"
# alias dcd="docker compose down"
alias dcuba="docker-compose up --build"
# alias dcuba="docker compose up --build"
alias dcb="docker-compose build"
# alias dcb="docker compose build"
alias dcr="docker-compose run --rm"
# alias dcr="docker compose run --rm"
alias dce="docker-compose exec"
# alias dce="docker compose exec"
alias dps="d ps"
alias dpsa="d ps -a"
alias dils="d image ls"
alias dcls="d container ls"
alias dl="d logs"

# KUBERNETES ALIASES
alias kgp="kubectl get pods"
alias kgd="kubectl get deployments"
alias kgs="kubectl get services"
alias kgsc="kubectl get sc"
alias kgpv="kubectl get pv"
alias kgpvc="kubectl get pvc"
alias kgcm="kubectl get configmap"
alias kgns="kubectl get namespaces"
alias kns="kubens"
alias kctx="kubectx"

# TMUX
alias t="tmux"
# Attach to any (i don't care once inside can got to any with prefix+w)
alias taa="t a"
# Attach to named session (ta df) will attach to dotfiles
alias ta="t a -t"
# Short cut for tmux new -s <session-name>
alias tn="t new -s"
# Short cut for tmux kill-session
alias tk="t kill-session"
# Short cut for tmux kill-server
alias tka="t kill-server"

# WORK
alias zeus="sshpass -p ${ZEUS_PW} ssh ${ZEUS_USER}"
alias peg="sshpass -p ${PEGASUS_PW} ssh ${PEGASUS_USER}"
alias cerb="sshpass -p ${CERBERUS_PW} ssh ${CERBERUS_USER}"
alias nrt="sshpass -p ${NRT_PW} ssh ${NRT_USER}"
alias hyd="sshpass -p ${HYDRA_PW} ssh ${HYDRA_USER}"
alias ods="sshpass -p ${ORION_DEV_PW} ssh ${ORION_DEV_USER}"
alias aris="sshpass -p ${ARIS_PW} ssh ${ARIS_USER}"
alias nowwp="sshpass -p ${NOW_WP_PW} ssh ${NOW_WP_USER}"
alias mav="sshpass -p ${MAVERICK_PW} ssh ${MAVERICK_USER}"
alias goose="sshpass -p ${GOOSE_PW} ssh ${GOOSE_USER}"
alias merlin="sshpass -p ${MERLIN_PW} ssh ${MERLIN_USER}"

function stowrestore() {
  ~/dotfiles/
  ../dotfiles/stowrestore
}

function startday() {
  ~/dotfiles/
  ../dotfiles/start_day.py
  cd -
}

# export FZF_DEFAULT_COMMAND='rg --files --hidden --follow'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fpath=($fpath "/home/jonathan/.zfunctions")
fpath=($fpath "/home/jonathan/.zfunctions")

export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

gline() {
	cd /home/jonathan/Desktop/pluaris-prod
	git log --shortstat --author $1 --since "10 years ago" --until "today" | grep "files changed" | awk '{files+=$1; inserted+=$4; deleted+=$6} END {print "files changed", files, "lines inserted:", inserted, "lines deleted:", deleted}'
  # git log --shortstat --author $1 --since "2021-1-1" --until "2021-4-1" | grep "files changed" | awk '{files+=$1; inserted+=$4; deleted+=$6} END {print "files changed", files, "lines inserted:", inserted, "lines deleted:", deleted}'
}

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship

#export EDITOR="/usr/bin/nvim"
#export VISUAL="/usr/bin/nvim"
fpath=($fpath "/home/jonathan/.zfunctions")
fpath=($fpath "/home/jonathan/.zfunctions")

# PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# allow pyenv-virtualenv to automatically activate a virtual environment if it
# has been set up to do so.
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
# export TERM=alacritty
export TERM=xterm-256color-italic

# ASDF
. $HOME/.asdf/asdf.sh

# KUBECTL KUBECTX #KUBENS
unset KUBECONFIG
# source /usr/local/opt/kube-ps1/share/kube-ps1.sh
# PROMPT='$(kube_ps1)'$PROMPT

# GO Linux
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$(go env GOPATH)/bin
export GO111MODULE=auto

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

