#!/bin/sh

#Exports
  export EDITOR=nvim
  export GOOGLE_APPLICATION_CREDENTIALS='./.AMCORVI-9b571a22b538.json'
  export PATH=${PATH}:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools
  export PS1='hack:/$(pwd) \n\n=> '
  export USER='Mr. Corvi'

# Collection of useful bin files
  export PATH=~/.corvi/bin:$PATH

# This is for android crap
  export JAVA_HOME=$(/usr/libexec/java_home)
  export PATH=${JAVA_HOME}/bin:$PATH
  export PATH=$HOME/.local/bin:$PATH

# React Native Android configuration settings
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator

# This is for node crap
  export PATH=/usr/local/bin:$PATH
  export PATH=~/npm-global/bin:$PATH
  export PATH="/usr/local/opt/node@8/bin:$PATH"

# MacPorts Installer addition on 2017-05-09_at_05:19:45: adding an appropriate PATH variable for use with MacPorts.
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
  PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
  export PATH

# State Variable for CD on quit functionality for nnn
  export NNN_TMPFILE="/tmp/nnn"

  export PATH=$PATH:~/.nexustools
  export PATH="$HOME/.cargo/bin:$PATH"
  export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"
  export PATH=$PATH:/usr/local/sbin
  export PATH=$PATH:$GOPATH/bin
  export PATH=$PATH:/usr/local/mysql/bin
  export _Z_DATA="$HOME/z-data"

# To use merlin-locate to go to the source of things installed with opam, you first of all need to keep the source around when installing, and let opam create .cmt files:

  # export OPAMKEEPBUILDDIR=true
  # export OCAMLPARAM="_,bin-annot=1"

