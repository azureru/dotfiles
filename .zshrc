# load all dotfiles
for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

source ~/.antigen/antigen/antigen.zsh

antigen bundle sublime
antigen bundle git

antigen apply

export GOPATH=~/public_html/go
export PATH="$(brew --prefix php56)/bin:/usr/local/bin:$PATH:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin:/usr/local/share/npm/bin"
export PATH=$PATH:/usr/local/opt/go/libexec/bin:$GOPATH/bin:
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export ANDROID_HOME=/usr/local/opt/android-sdk
