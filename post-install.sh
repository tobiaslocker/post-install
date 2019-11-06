#!/bin/bash
sudo apt update

sudo apt install vim
sudo apt install git
sudo apt install curl
sudo apt install build-essential cmake python3-dev
sudo apt install python3-pip


git config --global user.email "tobias@tobiaslocker.de"
git config --global user.name "Tobias Locker"
git config --global core.editor "vim"

# My rc files
mkdir -p ~/Workspace/src/github.com/tobiaslocker
cd ~/Workspace/src/github.com/tobiaslocker
git clone https://github.com/tobiaslocker/dotfiles.git
ln -s ~/Workspace/src/github.com/tobiaslocker/dotfiles/.vimrc ~/.vimrc
ln -s ~/Workspace/src/github.com/tobiaslocker/dotfiles/.global_extra_conf.py ~/.global_extra_conf.py

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall


python3 -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

GOVERSION=1.13.4
OS=linux
ARCH=amd64

cd ~/Downloads
wget https://dl.google.com/go/go${GOVERSION}.${OS}-${ARCH}.tar.gz

cd ~/Downloads
sudo tar -C /usr/local -xzf go${GOVERSION}.${OS}-${ARCH}.tar.gz



# YouCompleteMe
#cd ~/.vim/bundle/YouCompleteMe
#python3 install.py --clang-completer

