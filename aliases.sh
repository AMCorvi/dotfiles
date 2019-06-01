#!/bin/bash


# Aliases

# incase i forget how to clear
  alias c='clear'
  alias cls='clear'
  alias dl=download
  alias k='clear'
  alias x=extract

# Usefull stuff for presentation and seeing dotfiles
  alias hideall='defaults write com.apple.finder AppleShowAllFiles NO && killall Finder'
  alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
  alias showall='defaults write com.apple.finder AppleShowAllFiles YES && killall Finder'
  alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

#Hide Dock
  alias hidedock="defaults write com.apple.dock autohide -bool true && killall Dock && defaults write com.apple.dock autohide-delay -float 1000 && killall Dock && defaults write com.apple.dock no-bouncing -bool TRUE && killall Dock"

#Restore Dock
  alias restoredock="defaults write com.apple.dock autohide -bool false && killall Dock && defaults delete com.apple.dock autohide-delay && killall Dock && defaults write com.apple.dock no-bouncing -bool FALSE && killall Dock"

# Get rid of those pesky .DS_Store files recursively
  alias dsclean='find . -type f -name .DS_Store -print0 | xargs -0 rm'

# Reset Launchpad
  defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock

# Cause ranger to 'quit to' the last(current) viewed was in while the program was active
  alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

  alias arc.bash='nvim ~/.bash_profile'
  alias arc.bashrc='cd ~/.dotfiles/ && nvim bashrc'
  alias arc.boxes='cd ~code/sandbox/vagrant\ boxes'
  alias arc.code='cd ~/code/'
  alias arc.course='cd ~/code/Courses'
  alias arc.desk='cd ~/Desktop'
  alias arc.didact='cd ~/code/Didact'
  alias arc.down='cd ~/Downloads'
  alias arc.muxrc='dotfiles && nvim ./tmux.conf'
  alias arc.nsplash='arc.pic && cd unsplash'
  alias arc.pic='cd ~/Pictures'
  alias arc.portf='arc.code && cd portfolio/'
  alias arc.portfp='arc.code && cd portfolio/\#practice'
  alias arc.vimrc='cd ~/.dotfiles; nvim vimrc'
  alias bbcnews="termsaver rssfeed --url=http://newsrss.bbc.co.uk/rss/newsonline_world_edition/americas/rss.xml"
  alias bloomberg=termsaver\ rssfeed\ --url=http://feeds.reuters.com/reuters/topNews
  alias clear.z="echo '' > ~/.zsh_history"
  alias code='open -a "Code" '
  alias compile_the_chill="ytdl https://www.youtube.com/watch?v=mXRfApkMYZU --filter audio | mpv --no-video -"
  alias compile_the_hood="ytdl https://www.youtube.com/watch?v=05689ErDUdM --filter audio | mpv --no-video -"
  alias corvi.code='cd ~/Desktop/.Corvi-APPS'
  alias corvi.doc='cd ~/Desktop/.Corvi\ Docs'
  alias createra="create-react-app"
  alias creatern="react-native init"
  alias crontab="VIM_CRONTAB=true crontab"
  alias crow="feathers-plus"
  alias desktop=cd\ ~/Desktop
  alias dotfiles='cd ~/.dotfiles'
  alias esnode='node --experimental-modules '
  alias flush='dscacheutil -flushcache'
  alias frammed='alias'
  alias hack='cd $DESKTOP/hack; ranger'
  alias hackdatabase='termsaver programmer --path ~/.rfcs --delay 0.010'
  alias hacknode2='termsaver programmer --path ~/go --delay 0.020'
  alias hacknode='termsaver programmer --path ~/.config/yarn/global/node_modules/ --delay 0.020'
  alias la='ls -a'
  alias ll='ls -l'
  alias load_eslintconfig='cp ~/.eslintrc.js .eslintrc.js'
  alias ls='ls -G'
  alias lsa='ls -alt'
  alias maintain-brew="brew update; brew upgrade; brew prune; brew cleanup; brew doctor"
  alias news='newsbeuter'
  alias nodeenv='NODE_ENV='
  alias npm="pnpm"
  alias nprart="termsaver rssfeed --url=http://www.npr.org/rss/rss.php?id=1008"
  alias nytimes="termsaver rssfeed --url=http://feeds.nytimes.com/nyt/rss/HomePage"
  alias project="cd ~/Desktop/projects"
  alias py3='python3'
  alias re.source='source $HOME/.bash_profile'
  alias redcheck='ls'
  alias refmt='bsrefmt'
  alias reutersnews="termsaver rssfeed --url=http://feeds.reuters.com/reuters/topNews"
  alias rr='ranger'
  alias runvice='termsaver rssfeed --url=https://www.vice.com/en_us/rss'
  alias sei="set -o emacs"
  alias shiva.enters='cat ~/.shiva_net_title'
  alias svi="set -o vi"
  alias trm="trash"
  alias vimruntime='cd ~/.vim_runtime/'
  alias wirednews="termsaver rssfeed --url=http://feeds.wired.com/wired/index"
  alias worklog='nvim ~/.worklog'
  alias worklogs='termsaver programmer -p ~/.worklog -d .04'
  alias ytd='youtube-dl'
