#!/usr/bin/env bash

# include my library helpers for colorized echo and require_brew, etc
source ./lib.sh

bot "OK, let's roll..."

#####
# install homebrew
#####

running "checking homebrew install"
brew_bin=$(which brew) 2>&1 > /dev/null
if [[ $? != 0 ]]; then
	action "installing homebrew"
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    if [[ $? != 0 ]]; then
    	error "unable to install homebrew, script $0 abort!"
    	exit -1
	fi
fi
ok

running "checking brew-cask install"
output=$(brew tap | grep cask)
if [[ $? != 0 ]]; then
	action "installing brew-cask"
	require_brew caskroom/cask/brew-cask
fi
ok

# Make sure we’re using the latest Homebrew
running "updating homebrew"
brew update

bot "before installing brew packages, we can upgrade any outdated packages."
read -r -p "run brew upgrade? [y|N] " response
if [[ $response =~ ^(y|yes|Y) ]];then
    # Upgrade any already-installed formulae
    action "upgrade brew packages..."
    brew upgrade
    ok "brews updated..."
else
    ok "skipped brew package upgrades.";
fi

###############################################################################
#Install GUI tools using Homebrew                                             #
###############################################################################

bot "installing Springload Tools™"

read -r -p "install the everyday tools? (Browsers, Slack, etc) [y|N] " response
if [[ $response =~ ^(y|yes|Y) ]];then
    action "install brew cask packages..."

    require_cask firefox
    require_cask google-chrome
    require_cask google-chrome-canary
    require_cask opera

    require_cask google-drive
    require_cask avast
    require_cask upm
    require_cask alfred
    require_cask virtualbox
    require_cask skype
    require_cask slack
    require_cask harvest

    ok "casks installed..."
else
    ok "skipped everyday tools.";
fi


read -r -p "install the designer tools? (Dropbox, Sketch, etc) [y|N] " response
if [[ $response =~ ^(y|yes|Y) ]];then

    action "install brew cask packages..."

    require_cask dropbox
    require_cask sketch
    require_cask adobe-creative-cloud

    ok "casks installed..."
else
    ok "skipped developer tools.";
fi


read -r -p "install the developer tools? (iTerm2, Sublime Text, etc) [y|N] " response
if [[ $response =~ ^(y|yes|Y) ]];then

    action "install brew cask packages..."

    require_cask sublime-text3
    require_cask php-storm
    require_cask pycharm
    require_cask atom

    require_cask iterm2
    require_cask vagrant

    require_cask imagealpha
    require_cask imageoptim

    require_cask sequel-pro
    require_cask pgadmin3

    ok "casks installed..."
else
    ok "skipped developer tools.";
fi

read -r -p "install the Quicklook plugins? [y|N] " response
if [[ $response =~ ^(y|yes|Y) ]];then

    action "install brew cask packages..."

    require_cask qlcolorcode
    require_cask qlstephen
    require_cask qlmarkdown
    require_cask quicklook-json
    require_cask qlprettypatch
    require_cask quicklook-csv
    require_cask betterzipql
    require_cask webpquicklook
    require_cask suspicious-package

    ok "casks installed..."
else
    ok "skipped Quicklook plugins";
fi
