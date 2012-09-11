#!/bin/sh

# This link contains interestings plugins and tips for vim - must test!
# http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide

# Install pathogen plugin (https://github.com/tpope/vim-pathogen)
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Install NERDTree (https://github.com/scrooloose/nerdtree)
cd ~/.vim/bundle
rm -rf nerdtree
git clone https://github.com/scrooloose/nerdtree.git

cd ~/.vim/bundle
rm -rf snipmate.vim
git clone git://github.com/msanders/snipmate.vim.git

# Atualiza .vimrc
curl -so ~/.vimrc \
    https://raw.github.com/rennerocha/dotfiles/master/.vimrc
