if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# export PATH=$PATH:/usr/local/bin/:/usr/local/sbin/
# export GEM_PATH=/usr/local/lib/ruby/gems/2.2.0
# export GEM_HOME=/usr/local/gems
# export GEM_SPEC_CACHE=/usr/local/gems/specs
# export GIT_DISCOVERY_ACROSS_FILESYSTEM=1

# my old aliases
alias l='ls -la'
alias vi='vim'
alias g='grep --color'
alias p="ps ax"
alias f="find ./ -name"
alias bc='bc -l'

# history stuff
alias h="history"
alias hs="history -a"
alias hr="history -r"
export HISTSIZE=10000000
export HISTTIMEFORMAT="%F %T "

# other 
alias remove_non_ascii=perl\ -i.bk\ -pe\ 's/[^[:ascii:]]//g;'
export TERM=xterm-256color
export ENV="dev"
export VISUAL=vim
export HOSTALIASES=~/.hosts
export PS1='\[\033[02;32m\]\h:\033[00m\]\w\$ '
