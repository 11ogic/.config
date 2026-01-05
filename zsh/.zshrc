# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# locale
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# kitty 
export TERM=xterm-kitty

# iterm2 
#export TERM=xterm-256color

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS="
  --height 40%
  --layout=reverse
  --border
  --prompt='❯ '
  --pointer='➤'
  --marker='✔'
  --color=bg:#1c1c1c,hl:#357bf0,fg+:#ffffff,hl+:#357bf0,prompt:#1c1c1c,spinner:#357bf0,pointer:#357bf0
"

alias f=fzf

fd() {
  local dir
  dir=$(find . -type d -maxdepth 2 -not -path '*/.git/*' -not -path '*/node_modules/*' | fzf) && cd "$dir"
}
