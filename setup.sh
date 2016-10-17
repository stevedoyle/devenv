#!/bin/sh

# Setup Vundle
[ -d "$HOME/.vim/bundle/Vundle.vim" ] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup .vimrc (making a backup if one exists)
\cp -v --backup=numbered vimrc ~/.vimrc

# Install the Vundle plugins
echo "Installing Vundle plugins for vim ..."
vim +PluginInstall +qall

if test -e /usr/bin/dnf; then
	dnf install -y python-devel cmake
	cd ~/.vim/bundle/YouCompleteMe
	./install.py --clang-completer
	cd -
fi

# ctags setup
\cp -v --backup=numbered dotctags ~/.ctags
