#!/usr/bin/env bash

# include my library helpers for colorized echo and require_brew, etc
source ./lib.sh

###############################################################################
#Install CLI tools using Homebrew                                             #
###############################################################################

bot "installing command-line Tools™"


read -r -p "install the command-line tools? (shells, runtimes, etc) [y|N] " commandlineresponse
if [[ $commandlineresponse =~ ^(y|yes|Y) ]];then
    ok "will install command-line tools."
else
    ok "will skip command-line tools.";
fi

read -r -p "install npm, gem, pip packages? [y|N] " packagesresponse
if [[ $packagesresponse =~ ^(y|yes|Y) ]];then
    ok "will install packages."
else
    ok "will skip packages.";
fi

if [[ $commandlineresponse =~ ^(y|yes|Y) ]];then
    require_brew coreutils
    require_brew moreutils
    require_brew findutils

    require_brew bash
    require_brew bash-completion
    require_brew zsh
    require_brew zsh-completion

    require_brew git
    require_brew git-extras
    require_brew tig
    require_brew svn

    require_brew wget --enable-iri
    require_brew curl
    require_brew vim --override-system-vi

    # require_brew nano
    # require_brew tree
    # require_brew whois
    # require_brew unzip
    # require_brew gzip
    # require_brew unrar
    # require_brew rsync
    # require_brew less
    # require_brew gzip
    # require_brew cloc
    # require_brew dig

    require_brew node
    require_brew ruby
    require_brew python
    require_brew python3

    # require_brew mysql
    # require_brew mongodb

    # require_brew phantomjs
    # require_brew slimerjs
    # require_brew casperjs
else
    ok "will skip command-line tools.";
fi

function require_gem() {
    running "gem $1"
    if [[ $(gem list --local | grep $1 | head -1 | cut -d' ' -f1) != $1 ]];
        then
            action "gem install $1"
            gem install $1
    fi
    ok
}

function require_pip() {
    running "pip $1"
    if [[ $(pip list --local | grep $1 | head -1 | cut -d' ' -f1) != $1 ]];
        then
            action "pip install $1"
            pip install $1
    fi
    ok
}

npmlist=$(npm list -g)
function require_npm() {
    running "npm $1"
    echo $npmlist | grep $1@ > /dev/null
    if [[ $? != 0 ]]; then
        action "npm install -g $1"
        npm install -g $1
    fi
    ok
}

if [[ $packagesresponse =~ ^(y|yes|Y) ]];then

    require_npm bower
    require_npm browser-sync
    require_npm browserify
    require_npm csslint
    require_npm grunt
    require_npm gulp
    require_npm jscs
    require_npm jshint
    require_npm nodemon
    require_npm hyperlink
    require_npm eslint
    require_npm plato
    require_npm webpack
    require_npm jest-cli

    require_gem bundler
    require_gem rake
    require_gem sass
    require_gem scss-lint

    require_pip virtualenv

else
    ok "will skip packages.";
fi
