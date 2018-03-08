#!/bin/bash

## Install HomeBrew
if [ ! -x "$(command -v brew)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

## Install GNU packages
for pkg in "gawk grep gnu-sed"; do
    if [ ! "$(brew ls --versions $pkg)" ]; then
        brew install $pkg --with-default-names
    fi
done

TERM_PACKAGES="bash-completion git gpg gpg-agent html-xml-utils iftop jq pngquant terminal-notifier tmux tree wget"
JAVA_PACKAGES="antlr aspectj cfr-decompiler gradle groovy maven apktool dex2jar jadx smali"
NODE_PACKAGES="babel"

for pkg in $TERM_PACKAGES $JAVA_PACKAGES $NODE_PACKAGES; do
    if [ ! "$(brew ls --versions $pkg)" ]; then
        brew install $pkg
    fi
done

CASK_PACKAGES="android-file-transfer android-platform-tools android-sdk"

for pkg in $CASK_PACKAGES; do
    if [ ! "$(brew cask ls --versions $pkg)" ]; then
        brew cask install $pkg
    fi
done

