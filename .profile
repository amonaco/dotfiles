# ~/.bashrc
[ -z "$PS1" ] && return

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000000
HISTFILESIZE=200000

shopt -s histappend
shopt -s checkwinsize
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# aliases
alias ls='ls --color'
alias l='ls -la'
alias ll='ls -l'
alias t='ls -ltr'
alias la='ls -A'
alias vi='vim'
alias p='ps ax'
alias r='ruby'
alias curl='curl -o - '
alias scp="scp -q -o LogLevel=INFO"
alias hs="history -a"
alias hr="history -r"
alias bc="bc -l"

# stuff
source ~/.bash-powerline.sh
export LC_ALL="en_US.UTF-8"

# golang
# export GOPATH=$HOME/go
# export PATH=$PATH:/root/go/bin:/usr/local/bin:/usr/local/go/bin

# local
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/nginx/sbin/:/opt/homebrew/bin/

# python
# alias flask_run='export FLASK_RUN_HOST=0.0.0.0 && ./run-dev-server.sh'
### scl enable rh-python36 bash

# ruby
# source /usr/local/rvm/scripts/rvm
# rvm use 2.3.7
# alias pry='pry -r ./config/environment'

# erlang
# source .kerl/archives/21.2/activate
# source .kiex/scripts/kiex

# other exports
export TERM=xterm-256color
export ENV="dev"
export VISUAL=vim
export HOSTALIASES=~/.hosts
export PS1='\[\033[02;32m\]\h:\035[00m\]\w\$ '

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
eval "$(pyenv virtualenv-init -)"
export BASH_SILENCE_DEPRECATION_WARNING=1

# export GOROOT="/opt/homebrew/Cellar/go/1.24.5/libexec"
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
