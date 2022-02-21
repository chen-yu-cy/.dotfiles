#!/bin/sh

VIM_RUNTIME=~/.vim_runtime
DOTFILES=$HOME/.dotfiles

if [ ! -d "$VIM_RUNTIME" ] ; then
   echo "amix vimrc not found, clone the repo"
   git clone --depth=1 https://github.com/amix/vimrc.git $VIM_RUNTIME
   sh $VIM_RUNTIME/install_awesome_vimrc.sh
else
    echo amix vimrx exists, pull the latest commit""
    cd "$VIM_RUNTIME"
    git pull
   sh $VIM_RUNTIME/install_awesome_vimrc.sh
fi

cd $DOTFILES
stow vim

#install plugins
git clone https://github.com/psliwka/vim-smoothie ~/.vim_runtime/my_plugins/vim-smoothie

echo "setup successfully"
