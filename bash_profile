source ~/.bashrc
PATH=$PATH:/opt/metasploit-framework/bin
export PATH=$PATH:/opt/metasploit-framework/bin

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# opam configuration
  test -r /Users/AMC/.opam/opam-init/init.sh && . /Users/AMC/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# asdf configuration
  . /usr/local/opt/asdf/asdf.sh
  . /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# autojump configuration
  [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
