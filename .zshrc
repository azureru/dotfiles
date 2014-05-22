# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# the theme
ZSH_THEME="kardan"

# load all dotfiles
for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# sublime : so just type `stt` on the console :)
plugins=(sublime osx web-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# make sure /usr/local/bin in the front so we use `brew` tools
export PATH="/usr/local/bin:$PATH:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin:/usr/local/share/npm/bin"