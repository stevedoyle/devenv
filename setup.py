#!/usr/bin/python

import argparse
import os
import shutil

from subprocess import call

def copyfile(src, dst):
    if os.path.exists(dst):
        shutil.copy(dst, dst+'~')
    shutil.copy(src, dst)

def setup_vim():
    # Setup Vundle
    vundle_dir = os.path.normpath('/'.join([os.environ['HOME'],
                           '.vim/bundle/Vundle.vim']))
    print(vundle_dir)
    if not os.path.isdir(vundle_dir):
        call(['git', 'clone',
              'https://github.com/VundleVim/Vundle.vim.git',
              vundle_dir])

    # Setup .vimrc making a backup if one exists
    copyfile('./vim/vimrc', os.path.expanduser('.vimrc'))

    # Setup language specific settings
    ftdir = os.path.expanduser('.vim/ftdetect')
    if not os.path.exists(ftdir):
        os.makedirs(ftdir)
    copyfile('./vim/ucode.vim', ftdir + '/ucode.vim')

    # Install the Vundle plugins
    print('Installing Vundle plugins for vim ...')
    call(['vim', '+PluginInstall', '+qall'])

    # Setup clang extensions for the YouCompleteMe plugin
    cwd = os.getcwd()
    os.chdir(os.path.expanduser
             ('.vim/bundle/YouCompleteMe'))
    call(['./install.py', '--clang-completer'])
    os.chdir(cwd)

def setup_ctags():
    copyfile('./doctags', os.path.expanduser('.ctags'))

parser = argparse.ArgumentParser()
parser.parse_args()

setup_vim()
