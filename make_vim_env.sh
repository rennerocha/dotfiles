#!/bin/sh

# This link contains interestings plugins and tips for vim - must test!
# http://sontek.net/blog/detail/turning-vim-into-a-modern-python-ide

# Install pathogen plugin (https://github.com/tpope/vim-pathogen)
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Install NERDTree (https://github.com/scrooloose/nerdtree)
rm -rf ~/.vim/bundle/nerdtree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

rm -rf ~/.vim/bundle/snipmate.vim 
git clone git://github.com/msanders/snipmate.vim.git ~/.vim/bundle/snipmate.vim

# Install pep8 Validation
rm -rf ~/.vim/bundle/pep8
git clone git://github.com/vim-scripts/pep8.git ~/.vim/bundle/pep8

# Atualiza .vimrc
curl -so ~/.vimrc \
    https://raw.github.com/rennerocha/dotfiles/master/.vimrc

# Adiciona snippets Python personalizados
cat ./my.python.snippets >> ~/.vim/bundle/snipmate.vim/snippets/python.snippets

