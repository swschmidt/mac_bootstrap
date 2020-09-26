#!/bin/sh

#install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


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
  slack
  teamviewer
  tor-browser
  microsoft-office
  onedrive
  dropbox
  google-chrome
  zoom.us
  lastpass
  whatsapp
  ccleaner
  sublime-text
  the-unarchiver
)

#ToBeAdded
#Automox


#Formula to install
formula=(
  git
  htop
  node
)

# optional formula
# powershell

# Install apps
echo "Installing apps..."
read -p "Press any key to continue... " -n1 -s
brew cask install --appdir="/Applications" ${apps[@]}

# Install formula
echo "Installing formula..."
read -p "Press any key to continue... " -n1 -s
brew install ${formula[@]}
