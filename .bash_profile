#!/bin/sh

## Alias
alias ll='ls -l'
alias la='ls -al'
alias grep='grep --color'
alias logcat='adb logcat'
alias mvngen='mvn archetype:generate -B -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.1'

export GOPATH=~/.go
export PATH="~/bin:/usr/local/opt/openssl/bin:/usr/local/bin:/usr/local/sbin:$PATH"

## Install HomeBrew
if ! [ -x "$(command -v brew)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

## Install `wget`
if ! [ -x "$(command -v wget)" ]; then
    brew install wget
fi

## Install `tree`
if ! [ -x "$(command -v tree)" ]; then
    brew install tree
fi

## Install `iftop`
if ! [ -x "$(command -v iftop)" ]; then
    brew install iftop
fi

## Install `gpg`
if ! [ -x "$(command -v gpg)" ]; then
    brew install gpg
fi

## Install `gpg-agent`
if ! [ -x "$(command -v gpg-agent)" ]; then
    brew install gpg-agent
fi

## Install `pngquant`
if ! [ -x "$(command -v pngquant)" ]; then
    brew install pngquant
fi

## Install `jq`
if ! [ -x "$(command -v jq)" ]; then
    brew install jq
fi

## Install `html-xml-utils`
if [ ! -x "$(command -v hxselect)" ]; then
    brew install html-xml-utils
fi

## Install `smali`
if ! [ -x "$(command -v smali)" ]; then
    brew install smali
fi

## Install `dex2jar`
if ! [ -x "$(command -v d2j-dex2jar)" ]; then
    brew install dex2jar
fi

## Install `jadx`
if ! [ -x "$(command -v jadx)" ]; then
    brew install jadx
fi

