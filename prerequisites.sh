#!/bin/bash

# install `oh-my-zsh`
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# install `Slate`
cd /Applications && curl http://www.ninjamonkeysoftware.com/slate/versions/slate-latest.tar.gz | tar -xz

# install `brew`
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# install nodejs
brew install node

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

# install advanced quicklook plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package

# install vagrant and vbox
brew cask install vagrant
brew cask install virtualbox