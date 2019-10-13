#!/bin/bash

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

cp ~dotfiles/prompt/prompt_matthieu_setup ~/.zprezto/modules/prompt/functions/

prompt -p matthieu
