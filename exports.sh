#!/bin/sh

#Exports
  export GOOGLE_APPLICATION_CREDENTIALS='./.AMCORVI-9b571a22b538.json'
  export PS1='hack:/$(pwd) \n\n=> '
  export USER='Mr. Corvi'
  export EDITOR=nvim
  export PATH=${PATH}:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools

# Collection of useful bin files
  export PATH=~/.corvi/bin:$PATH

# This is for android crap
  export JAVA_HOME=$(/usr/libexec/java_home)
  export PATH=${JAVA_HOME}/bin:$PATH
  export PATH=$HOME/.local/bin:$PATH

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

  export PATH=$PATH:~/.nexustools
  export PATH="$HOME/.cargo/bin:$PATH"
  export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"
  export PATH=$PATH:/usr/local/sbin
  export PATH=$PATH:$GOPATH/bin
  export PATH=$PATH:/usr/local/mysql/bin
  export _Z_DATA="$HOME/z-data"
