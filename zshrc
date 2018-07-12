# Source any other dot files
# Just .aliases right now git-completion.bash
for file in ~/.{keys,prompt}; do
  [ -r "$file" ] && source "$file"
done
source ~/.bash_profile

unset file
bindkey -v
# Disable zsh autocorrect
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
setopt completeinword
zstyle ':completion:*:*:git:*' script /usr/local/etc/bash_completion.d/git-completion.bash

# Remove commands leading with space
setopt HIST_IGNORE_SPACE

set blink-matching-paren on

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit && compinit
zmodload -i zsh/complist
compinit -d ~/.zcompdump_capture

. <(npm completion)
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

_ANTIGEN_CACHE_ENABLED="true"

source ~/.dotfiles/antigen.zsh
antigen use oh-my-zsh
antigen theme bureau
antigen bundle git
antigen bundle rsync
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle python
antigen bundle history
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle marzocchi/zsh-notify
antigen bundle unixorn/git-extra-commands

antigen bundle tylerreckart/odin
antigen theme https://github.com/denysdovhan/tylerreckart/odin odin.zsh-theme

# antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship
# antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
# antigen bundle https://github.com/Valodim/zsh-capture-completion
antigen apply

source ~/.z/z.sh
alias journal=~/.journal.sh


zstyle ':notify:*' command-complete-timeout 5
zstyle ':notify:*' error-icon "https://media3.giphy.com/media/10ECejNtM1GyRy/200_s.gif"
zstyle ':notify:*' error-title "wow such #fail"
zstyle ':notify:*' success-icon "https://s-media-cache-ak0.pinimg.com/564x/b5/5a/18/b55a1805f5650495a74202279036ecd2.jpg"
zstyle ':notify:*' success-title "very #success. wow"

# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# # Add the following to your shell init to set up gpg-agent automatically for every shell
# if [ -f ~/.gnupg/.gpg-agent-info ] && [ -n "$(pgrep gpg-agent)" ]; then
#     source ~/.gnupg/.gpg-agent-info
#     export GPG_AGENT_INFO
# else
#     eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
# fi

# Set vim editing mode
set -o vi

export PATH=/Users/AMC/.local/bin/luna-studio:$PATH

PATH="/Users/AMC/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/AMC/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/AMC/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/AMC/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/AMC/perl5"; export PERL_MM_OPT;

# OPAM configuration
. /Users/AMC/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
