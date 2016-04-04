#!/usr/bin/env bash

###
# some bash library helpers
# @author Adam Eivy https://github.com/atomantic/dotfiles
###

# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"

function ok() {
    echo -e "$COL_GREEN[ok]$COL_RESET $1"
}

function bot() {
    echo -e "\n$COL_GREEN(っ◕‿◕)っ$COL_RESET - $1"
}

function running() {
    echo -en "$COL_YELLOW ⇒ $COL_RESET $1: "
}

function action() {
    echo -e "\n$COL_YELLOW[action]:$COL_RESET\n ⇒ $1..."
}

function warn() {
    echo -e "$COL_YELLOW[warning]$COL_RESET $1"
}

function error() {
    echo -e "$COL_RED[error]$COL_RESET $1"
}

function awesome_header() {
    echo -en "\n$COL_RED          ██            ██     ████ ██  ██ $COL_RESET"
    echo -en "\n$COL_RED         ░██           ░██    ░██░ ░░  ░██ $COL_RESET"
    echo -en "\n$COL_RED         ░██  ██████  ██████ ██████ ██ ░██  █████   ██████ $COL_RESET"
    echo -en "\n$COL_RED      ██████ ██░░░░██░░░██░ ░░░██░ ░██ ░██ ██░░░██ ██░░░░ $COL_RESET"
    echo -en "\n$COL_RED     ██░░░██░██   ░██  ░██    ░██  ░██ ░██░███████░░█████ $COL_RESET"
    echo -en "\n$COL_RED    ░██  ░██░██   ░██  ░██    ░██  ░██ ░██░██░░░░  ░░░░░██ $COL_RESET"
    echo -en "\n$COL_RED    ░░██████░░██████   ░░██   ░██  ░██ ███░░██████ ██████ $COL_RESET"
    echo -en "\n$COL_RED     ░░░░░░  ░░░░░░     ░░    ░░   ░░ ░░░  ░░░░░░ ░░░░░░ $COL_RESET"
    echo -en "\n"
}

function require_cask() {
    running "brew cask $1"
    brew cask list "$1" > /dev/null 2>&1 | true
    if [[ ${PIPESTATUS[0]} != 0 ]]; then
        action "brew cask install $1 $2"
        brew cask install "$1"
        if [[ $? != 0 ]]; then
            error "failed to install $1!"
        fi
    fi
    ok
}

function require_brew() {
    running "brew $1 $2"
    brew list "$1" > /dev/null 2>&1 | true
    if [[ ${PIPESTATUS[0]} != 0 ]]; then
        action "brew install $1 $2"
        brew install "$1" "$2"
        if [[ $? != 0 ]]; then
            error "failed to install $1!"
        fi
    fi
    ok
}
