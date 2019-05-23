#!/bin/bash

# Base16 Shell
  BASE16_SHELL="$HOME/.config/base16-shell/"
  [ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
    eval "$("$BASE16_SHELL/profile_helper.sh")"


# Quick Command-line File Completion
  [[ -s "$HOME/.corvi/bin/qfc/bin/qfc.sh" ]] && source "$HOME/.corvi/bin/qfc/bin/qfc.sh"

# Replace 'ls' command with 'exa' command if available
  if [[ `command -v exa` ]]; then
    alias ls='exa';
  else
    alias ls='ls';
  fi
