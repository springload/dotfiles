#!/usr/bin/env bash

# include my library helpers for colorized echo and require_brew, etc
source ./lib.sh

###############################################################################
#Install fonts using Homebrew                                                 #
###############################################################################

bot "installing fonts"

brew tap caskroom/fonts

require_cask font-droid-sans
require_cask font-droid-sans-mono
require_cask font-fontawesome
require_cask font-inconsolata
require_cask font-open-sans
require_cask font-pt-sans
require_cask font-roboto
require_cask font-source-code-pro
require_cask font-source-sans-pro
require_cask font-ubuntu

bot "Woot! All done."
