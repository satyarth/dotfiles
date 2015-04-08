#!/bin/bash

DOTFILES_DIR=/home/satyarth/dotfiles/
FIREFOX_PROFILE=fc0mrqe8

ln -s $DOTFILES_DIR/herbstluftwm/ ~/.config/herbstluftwm
ln -s $DOTFILES_DIR/sxhkd/ ~/.config/sxhkd
ln -s $DOTFILES_DIR/zathura/ ~/.config/zathura
ln -s $DOTFILES_DIR/.Xresources ~/.Xresources
ln -s $DOTFILES_DIR/.bashrc ~/.bashrc
ln -s $DOTFILES_DIR/ncmpcpp/ ~/.ncmpcpp
ln -s $DOTFILES_DIR/mpd/ ~/.mpd
ln -s $DOTFILES_DIR/weechat/ ~/.weechat
ln -s $DOTFILES_DIR/userChrome.css ~/.mozilla/firefox/$FIREFOX_PROFILE.default/chrome/userChrome.css

# Kill recursive symlinks
find $DOTFILES_DIR -lname '*' -exec rm {} \;