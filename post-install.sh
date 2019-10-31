#!/bin/bash
sudo apt update
sudo apt install vim
sudo apt install git
sudo apt install curl
sudo apt install build-essential cmake python3-dev

# YouCompleteMe
mkdir -p ~/Workspace/github.com/ycm-core
cd ~/Workspace/github.com/ycm-core
git clone https://github.com/ycm-core/YouCompleteMe.git
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer

# Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# My rc files
mkdir -p ~/Workspace/github.com/tobiaslocker
cd ~/Workspace/github.com/tobiaslocker
git clone https://github.com/tobiaslocker/dotfiles.git
ln -s ~/Workspace/github.com/tobiaslocker/dotfiles/.vimrc ~/.vimrc

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
