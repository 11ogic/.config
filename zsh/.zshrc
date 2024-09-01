# locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# iterm2 
export TERM=xterm-256color

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

#mysql
export PATH=$PATH:/usr/local/mysql/bin

## go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

## ranger
alias ra=ranger

# lazygit
alias lg=lazygit

# htop
alias top=htop

# highlight
plugins=( [plugins...] zsh-syntax-highlighting)
