#!/bin/sh

brew="/usr/local/bin/brew"
if [ -f "$brew" ]
then
  echo "Homebrew is installed, nothing to do here"
else
  echo "Homebrew is not installed, installing now"
  echo "This may take a while"
  echo "Homebrew requires osx command lines tools, please download xcode first"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

packages=(
"git"
"node"
"tmux"
"lua"
"termsaver"
"neovim"
"irssi"
"postgresql"
"hub"
"yarn"
"python2"
"python3"
"ocaml"
"opam"
"go"
"casperjs"
"phantomjs"
)

apps=(
  "alfred"
  "deluge"
  "fzf" #  vim ReasonML dependency
  "hammerspoon"
  "hyper"
  "image2icon"
  "iterm2"
  "keybase"
  "liteicon"
  "macdown" # GUI Markdown editor
  "openemu"
  "opera"
  "plug"
  "postgress"
  "skype"
  "spotify"
  "staruml"
  "tableplus"
  "the-unarchiver"
  "torbrowser"
)

for i in "${packages[@]}"
do
  brew install $i
  echo "---------------------------------------------------------"
done



echo "installing RCM, for dotfiles management"
brew tap thoughtbot/formulae
brew install rcm
echo "---------------------------------------------------------"

localGit="/usr/local/bin/git"
if [ -f "$localGit" ]
then
  echo "git is all good"
else
  echo "git is not installed"
fi
# Okay so everything should be good
# Fingers cross at least
# Now lets clone my dotfiles repo into .dotfiles/
echo "---------------------------------------------------------"

echo "Cloning AMC's dotfiles insto .dotfiles"
git clone https://github.com/amcorvi/dotfiles.git ~/.dotfiles

cd .dotfiles
git submodule update --init --recursive

cd $HOME
echo "running RCM's rcup command"
echo "This will symlink the rc files in .dofiles"
echo "with the rc files in $HOME"
echo "---------------------------------------------------------"

rcup

echo "---------------------------------------------------------"

echo "Changing to zsh"
chsh -s $(which zsh)

echo "You'll need to log out for this to take effect"
echo "---------------------------------------------------------"

echo "running oxs defaults"
~./osx.sh
echo "---------------------------------------------------------"

echo "Would like to install app AMCorvi's Prefered apps yes/n"
read app_confirm

if [ $app_confirm == 'yes' ]; then
    # Setup Cask for Homebrew
    echo "Installing apps via 'Cask' for Homebrew"
    brew tap caskroom/cask

    for app in "${apps[@]}"
    do
      brew cask install $app
      echo "---------------------------------------------------------"
    done
fi


echo "All done!"
echo "and change your terminal font to source code pro"
echo "Cheers"
echo "---------------------------------------------------------"

exit 0
