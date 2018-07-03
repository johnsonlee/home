#!/bin/bash

## Install HomeBrew
if [ ! -x "$(command -v brew)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

GNU_PACKAGES="gawk grep gnu-sed"

## Install GNU packages
for pkg in $GNU_PACKAGES; do
    if [ ! "$(brew ls --versions $pkg)" ]; then
        brew install -v $pkg --with-default-names
    fi
done

TERM_PACKAGES="aria2 bash-completion coreutils git gpg gpg-agent html-xml-utils htop iftop jq pngquant terminal-notifier tmux tree wget"
JAVA_PACKAGES="antlr aspectj cfr-decompiler gradle groovy maven apktool dex2jar jadx smali"
NODE_PACKAGES="babel pm2"

for pkg in $TERM_PACKAGES $JAVA_PACKAGES $NODE_PACKAGES; do
    if [ ! "$(brew ls --versions $pkg)" ]; then
        brew install -v $pkg
    fi
done

CASK_PACKAGES="android-file-transfer android-platform-tools android-sdk aria2gui etcher google-chrome iina iterm2 sublime-text typora"

for pkg in $CASK_PACKAGES; do
    if [ ! "$(brew cask ls --versions $pkg)" ]; then
        brew cask install -v $pkg
    fi
done

