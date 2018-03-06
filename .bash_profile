#!/bin/sh

if [ -d ~/bin ]; then
  export PATH=~/bin:$PATH
fi

#
# alias
#
alias ll='ls -l'
alias la='ls -al'
alias grep='grep --color'
alias logcat='adb logcat'
alias mvngen='mvn archetype:generate -B -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.1'

export GOPATH=~/.go

