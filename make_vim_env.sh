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
# Necessário instalar aplicação pep8
rm -rf ~/.vim/bundle/pep8
git clone git://github.com/vim-scripts/pep8.git ~/.vim/bundle/pep8

# Install pyflakes plugin
# Necessário instalar aplicação pyflakes 
rm -rf ~/.vim/bundle/pyflakes-pathogen
git clone git://github.com/mitechie/pyflakes-pathogen.git ~/.vim/bundle/pyflakes-pathogen

# Install quicktask plugin
rm -rf ~/.vim/bundle/quickstart
git clone https://github.com/aaronbieber/quicktask.git ~/.vim/bundle/quicktask

# Atualiza .vimrc
curl -so ~/.vimrc \
    https://raw.github.com/rennerocha/dotfiles/master/.vimrc

# Adiciona snippets Python personalizados
cat ./my.python.snippets >> ~/.vim/bundle/snipmate.vim/snippets/python.snippets

# Virtualenvwrapper settings
mkdir -p $HOME/projects/
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.profile
echo "export PROJECT_HOME=$HOME/projects" >> ~/.profile
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.profile

