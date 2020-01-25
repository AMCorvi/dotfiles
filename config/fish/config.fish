source ~/.bashrc
PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin

test -e "$HOME/.iterm2_shell_integration.bash" && source "$HOME/.iterm2_shell_integration.bash"

# opam configuration
test -r /Users/AMC/.opam/opam-init/init.sh && . /Users/AMC/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# asdf configuration
. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

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

test -e "$HOME/.iterm2_shell_integration.bash" && source "$HOME/.iterm2_shell_integration.bash"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/AMC/Desktop/google-cloud-sdk/path.bash.inc' ]; then source '/Users/AMC/Desktop/google-cloud-sdk/path.bash.inc'; fi

  # The next line enables shell command completion for gcloud.
  if [ -f '/Users/AMC/Desktop/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/AMC/Desktop/google-cloud-sdk/completion.bash.inc'; fi

    source ~/.z/z.sh

    # [ -f ~/.fzf.bash ] && source ~/.fzf.bash

    # Automate configuration of opam environment
    eval `opam config env`

    # added for either COC plugin or YARN
    # export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

    # Added by NVM[Node Version Manager]. Should be occluded or removed upon uninstall of NVM
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
