#!/bin/zsh

cd "$(dirname "${BASH_SOURCE}")"
git pull

function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
}

# Install antigen
# mkdir -p ~/.antigen/
# cd ~/.antigen/
# git clone https://github.com/zsh-users/antigen.git

# Install zprezto
# git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
# done

# do it!
unset doIt
chsh -s /usr/local/bin/zsh
source ~/.zshrc
