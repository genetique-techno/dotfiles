## install xcode through App Store

## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## install zsh
brew install zsh
sudo dscl . -create /Users/$USER UserShell /usr/local/bin/zsh
chsh -s $(which zsh)

## install tmux
brew install tmux

## generate ssh key
ssh-keygen -t rsa

## install n and latest node
curl -L http://git.io/n-install | bash

## explicitly set npm registry
npm config set registry https://registry.npmjs.org/

## set up onetwosee npm registry
npm login --registry=http://npm.onetwosee.xyz --scope=@onetwosee

## install some global npm modules
npm install webpack webpack-dev-server gulp nodemon -g

## Non shell related

## install sublime text
## install package-control
## copy sublime-settings repo

## install gitkraken

## fix subl command
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/.

## fix pbcopy and subl in tmux
brew install reattach-to-user-namespace

## mongoDB
brew install mongodb
## instal robomongo from their website

## copy dotfiles into home directory
cp -r ./ ~
cd ~
rm MACBOOK_SETUP.md

