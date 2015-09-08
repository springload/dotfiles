#!/usr/bin/env bash

# include my library helpers for colorized echo and require_brew, etc
source ./lib.sh

###############################################################################
#Install GUI tools using Homebrew                                             #
###############################################################################

bot "installing Springload Tools™"

read -r -p "install the everyday tools? (Browsers, Slack, etc) [y|N] " everydayresponse
if [[ $everydayresponse =~ ^(y|yes|Y) ]];then
    ok "will install everyday tools."
else
    ok "will skip everyday tools.";
fi

read -r -p "install the designer tools? (Dropbox, Sketch, etc) [y|N] " designerresponse
if [[ $designerresponse =~ ^(y|yes|Y) ]];then
    ok "will install designer tools."
else
    ok "will skip designer tools.";
fi

read -r -p "install the developer tools? (iTerm2, Sublime Text, etc) [y|N] " developerresponse
if [[ $developerresponse =~ ^(y|yes|Y) ]];then
    ok "will install developer tools."
else
    ok "will skip developer tools.";
fi

read -r -p "install the Quicklook plugins? [y|N] " quicklookresponse
if [[ $quicklookresponse =~ ^(y|yes|Y) ]];then
    ok "will install Quicklook plugins."
else
    ok "will skip Quicklook plugins.";
fi

bot "Let's go! You can probably take a walk, but make sure to check on your computer in case something needs your password."

if [[ $everydayresponse =~ ^(y|yes|Y) ]];then
    action "install brew cask packages..."

    require_cask firefox
    require_cask google-chrome

    require_cask google-drive
    require_cask avast
    # This is necessary for UPM.
    require_cask caskroom/homebrew-versions/java6
    require_cask upm
    require_cask alfred
    require_cask skype
    require_cask slack
    require_cask harvest

    ok "casks installed..."
else
    ok "skipped everyday tools.";
fi

if [[ $designerresponse =~ ^(y|yes|Y) ]];then

    action "install brew cask packages..."

    require_cask dropbox
    require_cask sketch
    require_cask adobe-creative-cloud

    ok "casks installed..."
else
    ok "skipped designer tools.";
fi

if [[ $developerresponse =~ ^(y|yes|Y) ]];then

    action "install brew cask packages..."

    require_cask phpstorm
    require_cask pycharm
    require_cask atom
    require_cask sublime-text3

    require_cask google-chrome-canary
    require_cask opera

    require_cask iterm2
    require_cask vagrant
    require_cask virtualbox
    require_cask ngrok

    require_cask imagealpha
    require_cask imageoptim

    require_cask sequel-pro
    require_cask pgadmin3

    ok "casks installed..."
else
    ok "skipped developer tools.";
fi

if [[ $quicklookresponse =~ ^(y|yes|Y) ]];then

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
