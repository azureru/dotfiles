#!/bin/bash

# install `oh-my-zsh`
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# install `brew`
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install nodejs
brew install node

# utils
brew install moreutils
brew install findutils
brew install gnu-sed --default-names
brew install wget --enable-iri
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# install basic nodejs tools
sudo npm install -g grunt-cli
sudo npm install -g grunt-init
sudo npm install -g bower
sudo npm install -g wc
sudo npm install -g assetr

# brew cask to enable install UI applications
brew tap phinze/cask
brew install brew-cask

# chrome and ffox
brew cask install google-chrome
brew cask install firefox

# install iTerm2
brew cask install iterm2

# image optim
cask install imagealpha 2> /dev/null
cask install imageoptim 2> /dev/null

# install advanced quicklook plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package

# install vagrant and vbox
brew cask install vagrant
brew cask install virtualbox

# cleanups
brew cleanup
