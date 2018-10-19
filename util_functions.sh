#!/bin/bash


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
    "eslint") \
      cp ~/.eslintrc.js .eslintrc.js &&\
      ansi --bg-green --white\
      "eslint config written to $PWD/.ieslintrc.js";;
  *) echo 'configuration file preset not available';;
  esac
  }



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
  }

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

## Uncomment to disable git info
#POWERLINE_GIT=0
__powerline() {
    # Colorscheme
    readonly RESET='\[\033[m\]'
    readonly COLOR_CWD='\[\033[0;34m\]' # blue
    readonly COLOR_GIT='\[\033[0;36m\]' # cyan
    readonly COLOR_SUCCESS='\[\033[0;32m\]' # green
    readonly COLOR_FAILURE='\[\033[0;31m\]' # red

    readonly SYMBOL_GIT_BRANCH='⑂'
    readonly SYMBOL_GIT_MODIFIED='*'
    readonly SYMBOL_GIT_PUSH='↑'
    readonly SYMBOL_GIT_PULL='↓'

    if [[ -z "$PS_SYMBOL" ]]; then
      case "$(uname)" in
        Darwin)   PS_SYMBOL='';;
        Linux)    PS_SYMBOL='$';;
        *)        PS_SYMBOL='%';;
      esac
    fi

    __git_info() {
      [[ $POWERLINE_GIT = 0 ]] && return # disabled
      hash git 2>/dev/null || return # git not found
      local git_eng="env LANG=C git"   # force git output in English to make our work easier

      # get current branch name
      local ref=$($git_eng symbolic-ref --short HEAD 2>/dev/null)

      if [[ -n "$ref" ]]; then
        # prepend branch symbol
        ref=$SYMBOL_GIT_BRANCH$ref
      else
        # get tag name or short unique hash
        ref=$($git_eng describe --tags --always 2>/dev/null)
      fi

      [[ -n "$ref" ]] || return  # not a git repo

      local marks

      # scan first two lines of output from `git status`
      while IFS= read -r line; do
        if [[ $line =~ ^## ]]; then # header line
          [[ $line =~ ahead\ ([0-9]+) ]] && marks+=" $SYMBOL_GIT_PUSH${BASH_REMATCH[1]}"
          [[ $line =~ behind\ ([0-9]+) ]] && marks+=" $SYMBOL_GIT_PULL${BASH_REMATCH[1]}"
        else # branch is modified if output contains more lines after the header line
          marks="$SYMBOL_GIT_MODIFIED$marks"
          break
        fi
      done < <($git_eng status --porcelain --branch 2>/dev/null)  # note the space between the two <

      # print the git branch segment without a trailing newline
      printf " $ref$marks"
    }

    ps1() {
      # Check the exit code of the previous command and display different
      # colors in the prompt accordingly.
      if [ $? -eq 0 ]; then
        local symbol="$COLOR_SUCCESS $PS_SYMBOL $RESET"
      else
        local symbol="$COLOR_FAILURE $PS_SYMBOL $RESET"
      fi

      local cwd="$COLOR_CWD\w$RESET"
      # Bash by default expands the content of PS1 unless promptvars is disabled.
      # We must use another layer of reference to prevent expanding any user
      # provided strings, which would cause security issues.
      # POC: https://github.com/njhartwell/pw3nage
      # Related fix in git-bash: https://github.com/git/git/blob/9d77b0405ce6b471cb5ce3a904368fc25e55643d/contrib/completion/git-prompt.sh#L324
      if shopt -q promptvars; then
        __powerline_git_info="$(__git_info)"
        local git="$COLOR_GIT\${__powerline_git_info}$RESET"
      else
        # promptvars is disabled. Avoid creating unnecessary env var.
        local git="$COLOR_GIT$(__git_info)$RESET"
      fi

      PS1="$cwd$git$symbol"
    }

    PROMPT_COMMAND="ps1${PROMPT_COMMAND:+; $PROMPT_COMMAND}"
  }

  __powerline
  unset __powerline





function n() {
    nnn "$@"

    if [ -f $NNN_TMPFILE ]; then
      . $NNN_TMPFILE
      rm -f $NNN_TMPFILE > /dev/null
    fi
  }

