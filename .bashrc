# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Bash stuff
export HISTCONTROL=ignoredups:ignorespace
export HISTSIZE=1000000
export HISTFILESIZE=200000
export BASH_SILENCE_DEPRECATION_WARNING=1
shopt -s histappend
shopt -s checkwinsize
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Aliases
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

# Powerline
source ~/.bash-powerline.sh

# Golang (Old ways)
# export GOPATH=$HOME/go
# export PATH=$PATH:/root/go/bin:/usr/local/bin:/usr/local/go/bin

# Local
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/local/nginx/sbin/:/opt/homebrew/bin/
export LC_ALL="en_US.UTF-8"

# Ruby
# source /usr/local/rvm/scripts/rvm
# rvm use 2.3.7
# alias pry='pry -r ./config/environment'

# Erlang
# source .kerl/archives/21.2/activate
# source .kiex/scripts/kiex

# Other
export ENV="dev"
export TERM=xterm-256color
export VISUAL=vim
export HOSTALIASES=~/.hosts
# export PS1='\[\033[02;32m\]\h:\035[00m\]\w\$ '

# Using when on OSX
# export GOROOT="/opt/homebrew/Cellar/go/1.24.5/libexec"
# export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# Load pyenv automatically by appending
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
eval "$(pyenv virtualenv-init -)"
