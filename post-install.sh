#!/bin/bash
sudo apt update

sudo apt install vim
sudo apt install git
sudo apt install curl
sudo apt install build-essential cmake python3-dev
sudo apt install python3-pip

# My rc files
mkdir -p ~/Workspace/github.com/tobiaslocker
cd ~/Workspace/github.com/tobiaslocker
git clone https://github.com/tobiaslocker/dotfiles.git
ln -s ~/Workspace/github.com/tobiaslocker/dotfiles/.vimrc ~/.vimrc
ln -s ~/Workspace/github.com/tobiaslocker/dotfiles/.global_extra_conf.py ~/.global_extra_conf.py

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer


mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim


python3 -m pip install --user numpy scipy matplotlib ipython jupyter pandas sympy nose

