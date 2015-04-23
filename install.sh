#!/usr/bin/env bash

echo -en "Preparing world domination...\n"

# Include Adam Eivy's library helpers.
source ./lib.sh

#####
# Introduction
#####

awesome_header

fullname=$(osascript -e "long user name of (system info)")

bot "Hi $fullname. I'm going to make your OSX system better. We're going to:"
action "install Xcode's command line tools"
action "install Homebrew and brew cask"
action "install all the apps that are used at Springload"
action "if you feel like it, we will also install more things"

read -r -p "Let's go? [y|N] " response
if [[ $response =~ ^(y|yes|Y) ]];then
    ok
else
    exit -1
fi

#####
# install Xcode command line tools
#####

running "checking Xcode CLI install"
xcode_select="xcode-select --print-path"
xcode_install=$($xcode_select) 2>&1 > /dev/null
if [[ $? != 0 ]]; then

    bot "You are missing the Xcode command line tools. I'll launch the install for you, but then you'll have to restart the script."

    read -r -p "Let's go? [y|N] " response
    if [[ $response =~ ^(y|yes|Y) ]];then
        xcode-select --install
    fi

    exit -1
fi
ok

bot "OK, let's roll..."

#####
# install homebrew
#####

running "checking homebrew install"
brew_bin=$(which brew) 2>&1 > /dev/null
if [[ $? != 0 ]]; then
    action "installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
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

./apps.sh

bot "Woot! All done."
