#!/bin/sh

# Setup Vundle
[ -d "$HOME/.vim/bundle/Vundle.vim" ] || git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Setup .vimrc (making a backup if one exists)
\cp -v --backup=numbered ./vim/vimrc ~/.vimrc

# Setup vim language files
[ -d "$HOME/.vim/ftdetect" ] || mkdir "$HOME/.vim/ftdetect"
\cp -v --backup=numbered ./vim/ucode.vim ~/.vim/ftdetect/

# Install the Vundle plugins
echo "Installing Vundle plugins for vim ..."
vim +PluginInstall +qall

if test -e /usr/bin/dnf; then
	dnf install -y python-devel cmake clang
	cd ~/.vim/bundle/YouCompleteMe
	./install.py --clang-completer
	cd -
fi

# ctags setup
\cp -v --backup=numbered dotctags ~/.ctags

# tmux setup
\cp -v --backup=numbered ./tmux/tmux.conf ~/.tmux.conf

\git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

