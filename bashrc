#!/bin/sh

source ~/.profile

set -o vi


 #Exports
export GOOGLE_APPLICATION_CREDENTIALS='./.AMCORVI-9b571a22b538.json'
export PS1='hack:/$(pwd) \n\n=> '
export USER='Star'
export EDITOR=nvim
export PATH=${PATH}:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools

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

export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/mysql/bin
export _Z_DATA="$HOME/z-data"
export GOOGLE_APPLICATION_CREDENTIALS='./.AMCORVI-9b571a22b538.json'
export PS1='hack:/$(pwd) \n\n=> '
export USER='Star'

# Collection of useful bin files
export PATH=~/.corvi/bin:$PATH

# Helper Variables
#TODO

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

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
  [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
  eval "$("$BASE16_SHELL/profile_helper.sh")"

alias arc.bash='nvim ~/.bash_profile'
alias arc.bashrc='cd ~/.dotfiles/ && nvim bashrc'
alias arc.boxes='cd ~code/sandbox/vagrant\ boxes'
alias arc.code='cd ~/code/'
alias arc.course='cd ~/code/Courses'
alias arc.desk='cd ~/Desktop'
alias arc.didact='cd ~/code/Didact'
alias arc.down='cd ~/Download'
alias arc.muxrc='dotfiles && nvim ./tmux.conf'
alias arc.nsplash='arc.pic && cd unsplash'
alias arc.pic='cd ~/Pictures'
alias arc.portf='arc.code && cd portfolio/'
alias arc.portfp='arc.code && cd portfolio/\#practice'
alias arc.vimrc='v ~/.vim/init.vim'
alias bbcnews="termsaver rssfeed --url=http://newsrss.bbc.co.uk/rss/newsonline_world_edition/americas/rss.xml"
alias bloomberg=termsaver\ rssfeed\ --url=http://feeds.reuters.com/reuters/topNews
alias clear.z="echo '' > ~/.zsh_history"
alias code='open -a "Code" '
alias corvi.code='cd ~/Desktop/.Corvi-APPS'
alias corvi.doc='cd ~/Desktop/.Corvi\ Docs'
alias createra="create-react-app"
alias creatern="react-native init"
alias desktop=cd\ ~/Desktop
alias dotfiles='cd ~/.dotfiles'
alias flush='dscacheutil -flushcache'
alias frammed='alias'
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
alias nprart="termsaver rssfeed --url=http://www.npr.org/rss/rss.php?id=1008"
alias nytimes="termsaver rssfeed --url=http://feeds.nytimes.com/nyt/rss/HomePage"
alias project="cd ~/Desktop/projects"
alias py3='python3'
alias re.source='source ~/.bash_profile && exec zsh'
alias redcheck='ls'
alias reutersnews="termsaver rssfeed --url=http://feeds.reuters.com/reuters/topNews"
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

# Useful blah blah blah
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

##
# Your previous /Users/AMC/.bash_profile file was backed up as /Users/AMC/.bash_profile.macports-saved_2017-05-09_at_05:19:45
##

# Finished adapting your PATH environment variable for use with MacPorts.


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/AMC/Desktop/google-cloud-sdk/path.bash.inc' ]; then source '/Users/AMC/Desktop/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/AMC/Desktop/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/AMC/Desktop/google-cloud-sdk/completion.bash.inc'; fi

source ~/.z/z.sh

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOUR="\[\033[0m\]"

function _git_prompt {
local git_status="`git status -unormal 2>&1`"
# Checks to see if we're in a git repo
if ! [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
  # if we're in a repo thats clean, then color it green
  if [[ "$git_status" =~ nothing\ to\ commit ]]; then
    local ansi=$GREEN
    # if the repos dirty, color it red
  elif [[ "$git_status" =~ nothing\ added\ to\ commit\ but\ untracked\ files\ present ]]; then
    local ansi=$RED
  else
    #Just to be sure, color it red
    local ansi=$RED
  fi

  # Get git branch name
  # checks the output of git status for "On branch " then uses that to set the branch
  if [[ "$git_status" =~ On\ branch\ ([^[:space:]]+) ]]; then
    branch=${BASH_REMATCH[1]}
    #test "$branch" != master || branch=' '
  else
    # Detached HEAD.  (branch=HEAD is a faster alternative.)
    branch="(`git describe --all --contains --abbrev=4 HEAD 2> /dev/null ||
      echo HEAD`)"
  fi
  # prints out " | $branch_name"
  echo -n '| \['"$ansi"'\]'"$branch"'\[\e[0m\] [$(_git_changes)]'
fi
}
export PROMPT_COMMAND='export PS1="${_PS1} $(_git_prompt)\n$ "'
export _PS1="$YELLOW\u$NO_COLOUR:\w$(_git_prompt)"

function _git_changes {
[[ $(git rev-parse --is-inside-work-tree 2>/dev/null) == true ]] || return 1

local added_symbol="●"
local unmerged_symbol="✗"
local modified_symbol="+"
local clean_symbol="✔"
local has_untracked_files_symbol="…"

local ahead_symbol="↑"
local behind_symbol="↓"

local unmerged_count=0 modified_count=0 has_untracked_files=0 added_count=0 is_clean=""

set -- $(git rev-list --left-right --count @{upstream}...HEAD 2>/dev/null)
local behind_count=$1
local ahead_count=$2

# Added (A), Copied (C), Deleted (D), Modified (M), Renamed (R), changed (T), Unmerged (U), Unknown (X), Broken (B)
while read line; do
  case "$line" in
    M*) modified_count=$(( $modified_count + 1 )) ;;
    U*) unmerged_count=$(( $unmerged_count + 1 )) ;;
  esac
done < <(git diff --name-status)

while read line; do
  case "$line" in
    *) added_count=$(( $added_count + 1 )) ;;
  esac
done < <(git diff --name-status --cached)

if [ -n "$(git ls-files --others --exclude-standard)" ]; then
  has_untracked_files=1
fi

if [ $(( unmerged_count + modified_count + has_untracked_files + added_count )) -eq 0 ]; then
  is_clean=1
fi

local leading_whitespace=""
[[ $ahead_count -gt 0 ]]         && { printf "%s" "$leading_whitespace$ahead_symbol$ahead_count"; leading_whitespace=" "; }
[[ $behind_count -gt 0 ]]        && { printf "%s" "$leading_whitespace$behind_symbol$behind_count"; leading_whitespace=" "; }
[[ $modified_count -gt 0 ]]      && { printf "%s" "$leading_whitespace$modified_symbol$modified_count"; leading_whitespace=" "; }
[[ $unmerged_count -gt 0 ]]      && { printf "%s" "$leading_whitespace$unmerged_symbol$unmerged_count"; leading_whitespace=" "; }
[[ $added_count -gt 0 ]]         && { printf "%s" "$leading_whitespace$added_symbol$added_count"; leading_whitespace=" "; }
[[ $has_untracked_files -gt 0 ]] && { printf "%s" "$leading_whitespace$has_untracked_files_symbol"; leading_whitespace=" "; }
[[ $is_clean -gt 0 ]]            && { printf "%s" "$leading_whitespace$clean_symbol"; leading_whitespace=" "; }
}

function server() {

  if [ `which browser-sync` -eq "browser-sync not found" ]; then
    npm install --global browser-sync
  fi

  local port=${1:-3000}
  local dir=${2:---directory}
  local files=${3:-""}

  if [ -z $files ]; then
    echo "File not info provided"
    echo "Server is on it way!!"

    browser-sync start . \
      --server $PWD \
      --port $port \
      $dir
  else
    echo "File info provided"
    echo "Server is on it way!!"

    browser-sync start . \
      --server $PWD \
      --port $port \
      $dir \
      --watch --files $file
  fi


} # server

  function download(){
  curl -O "$1"
}

# archive file or folder
function compress() {
dirPriorToExe=`pwd`
dirName=`dirname $1`
baseName=`basename $1`

if [ -f $1 ] ; then
  echo "It was a file change directory to $dirName"
  cd $dirName
  case $2 in
    tar.bz2)
      tar cjf $baseName.tar.bz2 $baseName
      ;;
    tar.gz)
      tar czf $baseName.tar.gz $baseName
      ;;
    gz)
      gzip $baseName
      ;;
    tar)
      tar -cvvf $baseName.tar $baseName
      ;;
    zip)
      zip -r $baseName.zip $baseName
      ;;
    *)
      echo "Method not passed compressing using tar.bz2"
      tar cjf $baseName.tar.bz2 $baseName
      ;;
  esac
  echo "Back to Directory $dirPriorToExe"
  cd $dirPriorToExe
else
  if [ -d $1 ] ; then
    echo "It was a Directory change directory to $dirName"
    cd $dirName
    case $2 in
      tar.bz2)
        tar cjf $baseName.tar.bz2 $baseName
        ;;
      tar.gz)
        tar czf $baseName.tar.gz $baseName
        ;;
      gz)
        gzip -r $baseName
        ;;
      tar)
        tar -cvvf $baseName.tar $baseName
        ;;
      zip)
        zip -r $baseName.zip $baseName
        ;;
      *)
        echo "Method not passed compressing using tar.bz2"
        tar cjf $baseName.tar.bz2 $baseName
        ;;
    esac
    echo "Back to Directory $dirPriorToExe"
    cd $dirPriorToExe
  else
    echo "'$1' is not a valid file/folder"
  fi
fi
echo "Done"
echo "###########################################"
}

# Extract archives - use: extract <file>
# Based on http://dotfiles.org/~pseup/.bashrc
function extract() {
local remove_archive
local success
local file_name
local extract_dir

if (( $# == 0 )); then
  echo "Usage: extract [-option] [file ...]"
  echo
  echo Options:
  echo "    -r, --remove    Remove archive."
fi

remove_archive=1
if [[ "$1" == "-r" ]] || [[ "$1" == "--remove" ]]; then
  remove_archive=0
  shift
fi

while (( $# > 0 )); do
  if [[ ! -f "$1" ]]; then
    echo "extract: '$1' is not a valid file" 1>&2
    shift
    continue
  fi

  success=0
  file_name="$( basename "$1" )"
  extract_dir="$( echo "$file_name" | sed "s/\.${1##*.}//g" )"
  case "$1" in
    (*.tar.gz|*.tgz) [ -z $commands[pigz] ] && tar zxvf "$1" || pigz -dc "$1" | tar xv ;;
    (*.tar.bz2|*.tbz|*.tbz2) tar xvjf "$1" ;;
    (*.tar.xz|*.txz) tar --xz --help &> /dev/null \
      && tar --xz -xvf "$1" \
      || xzcat "$1" | tar xvf - ;;
  (*.tar.zma|*.tlz) tar --lzma --help &> /dev/null \
    && tar --lzma -xvf "$1" \
    || lzcat "$1" | tar xvf - ;;
(*.tar) tar xvf "$1" ;;
(*.gz) [ -z $commands[pigz] ] && gunzip "$1" || pigz -d "$1" ;;
(*.bz2) bunzip2 "$1" ;;
(*.xz) unxz "$1" ;;
(*.lzma) unlzma "$1" ;;
(*.Z) uncompress "$1" ;;
(*.zip|*.war|*.jar|*.sublime-package) unzip "$1" -d $extract_dir ;;
(*.rar) unrar x -ad "$1" ;;
(*.7z) 7za x "$1" ;;
(*.deb)
  mkdir -p "$extract_dir/control"
  mkdir -p "$extract_dir/data"
  cd "$extract_dir"; ar vx "../${1}" > /dev/null
  cd control; tar xzvf ../control.tar.gz
  cd ../data; tar xzvf ../data.tar.gz
  cd ..; rm *.tar.gz debian-binary
  cd ..
  ;;
(*)
  echo "extract: '$1' cannot be extracted" 1>&2
  success=1
  ;;
    esac

    (( success = $success > 0 ? $success : $? ))
    (( $success == 0 )) && (( $remove_archive == 0 )) && rm "$1"
    shift
  done
}

#--- Usage: d-machine-static new_dm_name new_dm_ip [new_dm_memory]
function d-machine-static {
  new_dm_name="${1}"
  new_dm_ip="${2:-192.168.90.100}"
  new_dm_memory="${3:-1024}"
  docker-machine create -d virtualbox --virtualbox-hostonly-cidr "${new_dm_ip}/24" --virtualbox-memory "${new_dm_memory}" "${new_dm_name}"
  echo -e "\033[1;34m${new_dm_name}\033[0m = \033[0;32m$(/usr/local/bin/docker-machine ip ${new_dm_name})\033[0m"
}

# configure the proxy networking
function setProxy() {

  local port=${1:-9050}
  local ip=${2:-localhost}
  local networkservice=${3:-wi-fi}
  networksetup -setsocksfirewallproxy $networkservice $ip $port

}

function setProxyState() {
  local state=${1:-off}
  local networkservice=${2:-wi-fi}
  networksetup -setsocksfirewallproxystate $networkservice $state
}

function gitcover() {
  local upto=${1:-1}

  for var in {0..$upto};
  do
    git commit --all --amend --author "AMCorvi <amcorvi@icloud.com>"  --no-edit && \
      git rebase --continue
  done
}

function loadconfig () {
  local config=${1:-"eslint"}

  case "$config" in
    "eslint") cp ~/.eslintrc.js .eslintrc.js && echo -e "$YELLOW\eslint config written to $PWD/.ieslintrc.js";;
    *) echo 'configuration file preset not available';;
  esac
}
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

