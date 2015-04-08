#!/bin/bash

DOTFILES_DIR=/home/satyarth/dotfiles/

ln -s $DOTFILES_DIR/herbstluftwm/ ~/.config/herbstluftwm
ln -s $DOTFILES_DIR/sxhkd/ ~/.config/sxhkd
ln -s $DOTFILES_DIR/zathura/ ~/.config/zathura
ln -s $DOTFILES_DIR/.Xresources ~/.Xresources
ln -s $DOTFILES_DIR/.bashrc ~/.bashrc
ln -s $DOTFILES_DIR/ncmpcpp/ ~/.ncmpcpp

# Kill recursive symlinks
find $DOTFILES_DIR -lname '*' -exec rm {} \;