###############################
#           zprezto           #
###############################
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

autoload -Uz promptinit
promptinit
prompt matthieu

###############################
#           general           #
###############################
unsetopt correct
setopt NO_NOMATCH
export DISABLE_SPRING=1
HISTFILE=~/.histfile
HISTSIZE=15000
SAVEHIST=15000
bindkey -v

###############################
#           thefuck           #
###############################

eval $(thefuck --alias --enable-experimental-instant-mode)

###############################
#          compinit           #
###############################
zstyle :compinstall filename '/Users/mat/.zshrc'

autoload -Uz compinit

for dump in ~/.zcompdump(N.mh+24); do
  compinit
done

compinit -C

###############################
#           rbenv             #
###############################
eval "$(rbenv init -)"

###############################
#       default editor        #
###############################
compdef -d subl mv

###############################
#           colors            #
###############################
export TERM=xterm-256color

###############################
#       node / nvm / npm      #
###############################
nvm() {
    unset -f nvm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    nvm "$@"
}

node() {
    unset -f node
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    node "$@"
}

npm() {
    unset -f npm
    export NVM_DIR=~/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
    npm "$@"
}

###############################
#         tab titles          #
###############################
set-window-title() {
  window_title="\e]1;$(basename $PWD)\a"
  echo -ne "$window_title"
}

PR_TITLEBAR=''
set-window-title
autoload -U add-zsh-hook precmd set-window-title

###############################
#            hstr             #
###############################
alias hh=hstr
export HISTFILE=~/.zsh_history
export HSTR_CONFIG=hicolor,raw-history-view,prompt-bottom,blacklist

bindkey -s "\C-r" "\eqhstr\n"

###############################
#          aliases            #
###############################
if [[ -r ~/.aliases ]]; then
  source ~/.aliases
fi

###############################
#          functions          #
###############################
if [[ -r ~/.functions ]]; then
  source ~/.functions
fi
