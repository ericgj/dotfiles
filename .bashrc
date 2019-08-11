#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Paths
# RBENVPATH="$HOME/.rbenv/bin"
PIPPATH="$HOME/.local/bin"
GEMPATH="$HOME/.gem/ruby/2.4.0/bin"
HEROKUPATH="/usr/local/heroku/bin"
GCLOUDPATH="$HOME/develop/libs/google-cloud-sdk/bin"
# CABALBIN="$HOME/.cabal/bin"

export PATH="$PIPPATH:$GEMPATH:$HEROKUPATH:$GCLOUDPATH:$PATH"

# CDPATH
export CDPATH=".:$HOME:$HOME/develop/gapps:$HOME/develop/CDM:$HOME/dev-home/libs:$HOME/dev-home/components:$HOME/dev-home/blogs:$HOME/dev-home/apps"

# rbenv init
# eval "$(rbenv init -)"

# node
export NODE_PATH="/usr/lib/node_modules"

# python - use this for interactive startup only
export PYTHONSTARTUP="$HOME/.pystartup.py"
export GAE_SDK_ROOT="$HOME/develop/libs/google_appengine"

source ~/git-completion.bash
source ~/git-prompt.sh

export LANG="en_US.UTF-8"
export EDITOR="vim"

alias ls='ls --color=auto'

PROMPT_COMMAND='__git_ps1 "\u@\h \W" "\\\$ "'


