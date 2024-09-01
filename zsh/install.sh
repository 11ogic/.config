#!/bin/bash

OH_MY_ZSH_PATH="$HOME/.oh-my-zsh"
ZSH_CUSTOM_PATH="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

if [[ ! -d $OH_MY_ZSH_PATH ]]; then
    git clone https://github.com/ohmyzsh/ohmyzsh.git $OH_MY_ZSH_PATH
fi

if [[ ! -d "$ZSH_CUSTOM_PATH/plugins/zsh-autosuggestions" ]]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM_PATH/plugins/zsh-autosuggestions
fi

if [[ ! -d "$ZSH_CUSTOM_PATH/plugins/zsh-syntax-highlighting" ]]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM_PATH/plugins/zsh-syntax-highlighting
fi

if [[ ! -d "$ZSH_CUSTOM_PATH/themes/powerlevel10k" ]]; then
    git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git $ZSH_CUSTOM_PATH/themes/powerlevel10k
fi

if [[ -f "$HOME/.zshrc" ]]; then
	cp ~/.zshrc ~/.zshrc.orig
fi

cp .zshrc ~/.zshrc

chsh -s $(which zsh)
