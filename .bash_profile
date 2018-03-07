#!/bin/bash

## Alias
alias ll='ls -l'
alias la='ls -al'
alias grep='grep --color'
alias logcat='adb logcat'
alias mvngen='mvn archetype:generate -B -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.1'

export GOPATH=~/.go
export PATH="~/bin:/usr/local/opt/openssl/bin:/usr/local/bin:/usr/local/sbin:$PATH"

## Install HomeBrew
if [ ! -x "$(command -v brew)" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

## Install `bash-completion`
if [ ! -e "$(brew --prefix)/etc/bash_completion" ] || [ ! -d "$(brew --prefix)/etc/bash_completion.d" ]; then
    brew install bash-completion
else
    . $(brew --prefix)/etc/bash_completion
fi

## Install `tmux`
if [ ! -x "$(command -v tmux)" ]; then
    brew install tmux
fi

## Install `git`
if [ ! -x "$(command -v git)" ]; then
    brew install git
fi

## Install `wget`
if [ ! -x "$(command -v wget)" ]; then
    brew install wget
fi

## Install `tree`
if [ ! -x "$(command -v tree)" ]; then
    brew install tree
fi

## Install `iftop`
if [ ! -x "$(command -v iftop)" ]; then
    brew install iftop
fi

## Install `gpg`
if [ ! -x "$(command -v gpg)" ]; then
    brew install gpg
fi

## Install `gpg-agent`
if [ ! -x "$(command -v gpg-agent)" ]; then
    brew install gpg-agent
fi

## Install `pngquant`
if [ ! -x "$(command -v pngquant)" ]; then
    brew install pngquant
fi

## Install `jq`
if [ ! -x "$(command -v jq)" ]; then
    brew install jq
fi

## Install `html-xml-utils`
if [ ! -x "$(command -v hxselect)" ]; then
    brew install html-xml-utils
fi

## Install `gradle`
if [ ! -x "$(command -v gradle)" ]; then
    brew install gradle
fi

## Install `groovy`
if [ ! -x "$(command -v groovy)" ]; then
    brew install groovy
fi

## Install `maven`
if [ ! -x "$(command -v mvn)" ]; then
    brew install maven
fi

## Install `smali`
if [ ! -x "$(command -v smali)" ]; then
    brew install smali
fi

## Install `dex2jar`
if [ ! -x "$(command -v d2j-dex2jar)" ]; then
    brew install dex2jar
fi

## Install `jadx`
if [ ! -x "$(command -v jadx)" ]; then
    brew install jadx
fi

## Install `apktool`
if [ ! -x "$(command -v apktool)" ]; then
    brew install apktool
fi

## Install `cfr-decompiler`
if [ ! -x "$(command -v cfr-decompiler)" ]; then
    brew install cfr-decompiler
fi

## Install `antlr`
if [ ! -x "$(command -v antlr4)" ]; then
    brew install antlr
fi

## Install `aspectj`
if [ ! -x "$(command -v aj)" ]; then
    brew install aspectj
fi

## Install `babel`
if [ ! -x "$(command -v babel)" ]; then
    brew install babel
fi

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_HIDE_IF_PWD_IGNORED=true
GIT_PS1_SHOWCOLORHINTS=true

export PROMPT_COMMAND='__git_ps1 "\u@\h \w" " \\\$ "'

