#!/bin/sh

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Apps to install
apps=(
  visual-studio-code
  github
  iterm2
  brave-browser
  microsoft-edge
  skitch
  firefox
  sublime-text
)

#ToBeAdded
#Tor
#Automox


#Formula to install
formula=(
  git
  htop
)

#Retired Formula
#powershell

# Install apps
echo "Installing apps..."
read -p "Press any key to continue... " -n1 -s
brew cask install --appdir="/Applications" ${apps[@]}

# Install formula
echo "Installing formula..."
read -p "Press any key to continue... " -n1 -s
brew install ${formula[@]}
