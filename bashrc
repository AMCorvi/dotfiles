#!/bin/bash

source ~/.profile

set -o vi

# Exports
  source ~/.exports.sh
# Aliases
  source ~/.aliases.sh
# Utility functions
  source ~/.util_functions.sh
# Shell Addons
  source ~/.addons.sh
# PS1 Terminal Prompt
  source ~/.ps1.sh

# Useful blah blah blah
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/AMC/Desktop/google-cloud-sdk/path.bash.inc' ]; then source '/Users/AMC/Desktop/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/AMC/Desktop/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/AMC/Desktop/google-cloud-sdk/completion.bash.inc'; fi

source ~/.z/z.sh

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Automate configuration of opam environment
eval `opam config env`

