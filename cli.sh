#!/usr/bin/env bash

# include my library helpers for colorized echo and require_brew, etc
source ./lib.sh

###############################################################################
#Install CLI tools using Homebrew                                             #
###############################################################################

bot "installing command-line Tools™"

read -r -p "install the command-line tools? (shells, runtimes, etc) [y|N] " everydayresponse
if [[ $everydayresponse =~ ^(y|yes|Y) ]];then
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
