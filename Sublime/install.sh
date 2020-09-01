#!/bin/bash

# Remove existing settings
rm -f ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings

# # Copy the good ones
cp ~/dotfiles/Sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
cp ~/dotfiles/Sublime/Default\ (OSX).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
cp ~/dotfiles/Sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# # Install Package Control
curl -o ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package "https://packagecontrol.io/Package%20Control.sublime-package"

# Add command line
mkdir ~/bin
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
