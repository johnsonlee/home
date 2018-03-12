#!/bin/bash

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
export GIT_PS1_HIDE_IF_PWD_IGNORED=true
export GIT_PS1_SHOWCOLORHINTS=true

export GOPATH=~/.go

## Alias
alias ls='ls -G'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='grep --color=auto'
alias wget='wget --tries=inf -c'
alias logcat='adb logcat'
alias realpath='grealpath'
alias mvngen='mvn archetype:generate -B -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.1'
alias alert='terminal-notifier -title "$([ $? = 0 ] && echo Success || echo Error)" -message "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s* alert.*$//'\'')"'

if [ -x "$(command -v brew)" ]; then
    [ "$(brew ls --versions bash-completion)" ] && [ -e "$(brew --prefix)/etc/bash_completion" ] && . $(brew --prefix)/etc/bash_completion

    [ -f "$(brew --prefix)/share/android-sdk"    ] && export ANDROID_SDK_ROOT="$(brew --prefix)/share/android-sdk"
    [ -f "$(brew --prefix)/share/android-ndk"    ] && export ANDROID_NDK_HOME="$(brew --prefix)/share/android-ndk"
    [ -f "$(brew --prefix)/opt/readline/lib"     ] && export LDFLAGS="$LDFLAGS -L$(brew --prefix)/opt/readline/lib"
    [ -f "$(brew --prefix)/opt/readline/include" ] && export CPPFLAGS="$CPPFLAGS -I$(brew --prefix)/opt/readline/include"
    [ -f "$(brew --prefix)/opt/icu4c/lib"        ] && export LDFLAGS="$LDFLAGS -L$(brew --prefix)/opt/icu4c/lib"
    [ -f "$(brew --prefix)/opt/icu4c/include"    ] && export CPPFLAGS="$CPPFLAGS -I$(brew --prefix)/opt/icu4c/include"
    [ "$(brew ls --versions groovy)"             ] && export GROOVY_HOME="$(brew --prefix)/opt/groovy/libexec"
fi

if [ "$(command -v __git_ps1)" ]; then
    export PROMPT_COMMAND='__git_ps1 "\\[$(tput bold)\\]\u@\h\\[$(tput sgr0)\\]:\\[$(tput setaf 4)\\]\w\\[$(tput sgr0)\\]" " \\\$ "'
fi

export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/gpg-agent/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="~/bin:$PATH"

