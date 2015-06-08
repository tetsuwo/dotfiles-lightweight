#!/usr/bin/env sh

set -eu
HOME=$(pwd)

echo "HOME directory"
echo $HOME
echo "Linking .hgrc"
ln -snf $HOME/dotfiles/.hgrc $HOME/.hgrc
echo "Linking .vimrc"
ln -snf $HOME/dotfiles/.vimrc $HOME/.vimrc
echo "Linking .gitconfig"
ln -snf $HOME/dotfiles/.gitconfig $HOME/.gitconfig
echo "Linking .vim directory"
ln -snf $HOME/dotfiles/.vim/ $HOME/
