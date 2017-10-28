#!/bin/sh

sudo apt-get update -y && sudo apt-get install -y tmux zsh vim git python3 python3-pip exuberant-ctags

# get external tools used

if [ ! -x ~/dotfiles ] ; then
    git clone https://github.com/anjakefala/dotfiles.git ~/dotfiles
fi

cd ~/dotfiles

# Should I submodule add oh-my-zsh
git submodule update --init --recursive

# setup .vim dirs

mkdir -p ~/.vim/undo
mkdir -p ~/.vim/swp

# install actual dot files

for i in zshrc visdatarc vimrc tmux.conf ctags gitconfig bash_aliases ; do
    ln -sf `pwd`/$i ~/.$i
done


mkdir -p ~/.vim/bundle
ln -sf `pwd`/Vundle.vim ~/.vim/bundle/Vundle.vim

# change shell to zsh
chsh -s $(grep /zsh$ /etc/shells | tail -1)
