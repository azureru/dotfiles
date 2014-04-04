#!/bin/bash

# install `oh-my-zsh`
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# install `Slate`
cd /Applications && curl http://www.ninjamonkeysoftware.com/slate/versions/slate-latest.tar.gz | tar -xz

# install `brew`
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# install nodejs
brew install node

sudo npm install -g grunt-cli
sudo npm install -g grunt-init
sudo npm install -g bower
sudo npm install -g wc
sudo npm install -g assetr

# install quicklooks
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package