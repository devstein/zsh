# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#Path to your oh-my-zsh installation.
export EDITOR=nvim
export CODE="$HOME/Documents/code"
export ZSH="$HOME/.oh-my-zsh"


export GITHUB_USERNAME=devstein

export LDFLAGS="-L/usr/local/opt/readline/lib"
export CPPFLAGS="-I/usr/local/opt/readline/include"
export PKG_CONFIG_PATH="/usr/local/opt/readline/lib/pkgconfig"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# For youcompleteme
export PYTHON_CONFIGURE_OPTS="--enable-framework"

# inetutils (ftp)

export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"

export XDG_CONFIG_HOME="$HOME/.config"

export PGDATA="$HOME/psql/data"

#Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(
  git
  docker
  kubectl
# https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
  zsh-autosuggestions
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
  zsh-syntax-highlighting
  jsontools
)

source $ZSH/oh-my-zsh.sh

# Kubernetes CLI Helepr 
if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi >> ~/.zshrc # add autocomplete permanently to your zsh shell

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias vi="nvim"
alias vim="nvim"

alias G=" | grep -i "
# Python aliases
alias python="python3"
export PATH=$PATH:$HOME/miniconda3/bin

# Kubernetes Alias
alias k=kubectl

# Git aliases

# clean up all local branches except main
alias gbc="git branch | grep -v "main" | xargs git branch -D"
alias pr="gh pr create -l 'please code review' -a @me"
alias gc="git checkout "
alias gs="git status"
alias gcmp="git checkout main && git pull"

# pretty view of git branches, ordered by edit date
alias gb='git for-each-ref --sort=committerdate refs/heads/ --format="%(HEAD)%(color:blue)%(refname:short)%(color:reset) -%(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname)(%(color:green)%(committerdate:relative)%(color:reset))"'

# yarn/node alias
alias y="yarn"
alias ys="yarn start"
alias yys="yarn && yarn start"

# Viaduct aliases
alias code="cd $CODE"

# rebind alt + arrow
# 2018 MacbookPro 13in
# bindkey "^[[1;9C" forward-word
# bindkey "^[[1;9D" backward-word

# 2018 MacbookPro 15in
bindkey "[C" forward-word
bindkey "[D" backward-word


# Load NVIM 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GCloud 
# source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
# source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc

# Paths
export PATH=/usr/local/bin:$PATH


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Go Configuration
export PATH=$PATH:/usr/local/go/bin
export GO111MODULE=on

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# pyenv init
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Ruby Config
export PATH="/usr/local/opt/ruby/bin:$PATH"

export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"

function k_restart() {
  kubectl -n $1 rollout restart deployment $2
}
alias kpsql="kubectl run psql-$USER -i --tty --rm=true --restart=Never --image=postgres --command -- /bin/bash"
alias kredis="kubectl run redis-cli-$USER -i --tty --rm=true --restart=Never --image=redis --command -- /bin/bash"

function kcurl() {
  kubectl run -i --rm --restart=Never curl-$USER --image=dockerqa/curl:ubuntu-trusty --command -- curl $@
}

# Kubectl pluginmanager
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Rust
source "$HOME/.cargo/env"

# Deno

export DENO_INSTALL="/Users/devinstein/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Postgres 15
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"

# Github Co Pilot CLI
copilot_what-the-shell () {
  TMPFILE=$(mktemp);
  trap 'rm -f $TMPFILE' EXIT;
  if /usr/local/bin/github-copilot-cli what-the-shell "$@" --shellout $TMPFILE; then
    if [ -e "$TMPFILE" ]; then
      FIXED_CMD=$(cat $TMPFILE);
      print -s "$FIXED_CMD";
      eval "$FIXED_CMD"
    else
      echo "Apologies! Extracting command failed"
    fi
  else
    return 1
  fi
};
alias '??'='copilot_what-the-shell';

copilot_git-assist () {
  TMPFILE=$(mktemp);
  trap 'rm -f $TMPFILE' EXIT;
  if /usr/local/bin/github-copilot-cli git-assist "$@" --shellout $TMPFILE; then
    if [ -e "$TMPFILE" ]; then
      FIXED_CMD=$(cat $TMPFILE);
      print -s "$FIXED_CMD";
      eval "$FIXED_CMD"
    else
      echo "Apologies! Extracting command failed"
    fi
  else
    return 1
  fi
};
alias 'git?'='copilot_git-assist';

copilot_gh-assist () {
  TMPFILE=$(mktemp);
  trap 'rm -f $TMPFILE' EXIT;
  if /usr/local/bin/github-copilot-cli gh-assist "$@" --shellout $TMPFILE; then
    if [ -e "$TMPFILE" ]; then
      FIXED_CMD=$(cat $TMPFILE);
      print -s "$FIXED_CMD";
      eval "$FIXED_CMD"
    else
      echo "Apologies! Extracting command failed"
    fi
  else
    return 1
  fi
};
alias 'gh?'='copilot_gh-assist';
alias 'wts'='copilot_what-the-shell'
