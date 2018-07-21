# Sourcing order [1].
#
# ~/.zshenv         Usually run for every zsh.
# ~/.zprofile       Run for login shells.
# ~/.zshrc          Run for interactive shells.
# ~/.zlogin         Run for login shells.

# Don't duplicate entries in fpath
typeset -U fpath

# Locations searched for functions.
fpath=(~/.zsh_custom.d $fpath[@])

# Initialize the autocompletion system
autoload -Uz compinit
compinit

# Enable grouping of directories, files, make-targets, etc in autocomplete menu
zstyle ':completion:*:matches'         group 'yes'
zstyle ':completion:*'                 group-name ''

# Enable key-driven interface with higlighting.
zstyle ':completion:*' menu select

# Use colors in completion
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*:default'         list-colors ${(s.:.)LS_COLORS}

# If case-sensitive completion matches nothing, try insensitive.
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

autoload spectrum
spectrum

HISTFILE=~/.zsh_history
HISTSIZE=10000 # Number of entries remembered by a session.
SAVEHIST=20000 # Number of entries in the history file.

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# All sessions will append to the same history file.
setopt appendhistory

setopt extendedglob

# Use emacs-style key bindings
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '/home/cs/.zshrc'
# End of lines added by compinstall


export MANWIDTH=80

# TODO nvim if installed. Otherwise vim
export GIT_EDITOR=nvim

source ~/.zsh_custom.d/plugins/liquidprompt/liquidpromptrc-dist
source ~/.zsh_custom.d/plugins/liquidprompt/liquid.theme
source ~/.zsh_custom.d/plugins/liquidprompt/liquidprompt

source ~/.zsh_custom.d/aliases.zsh

# References
# [1]: http://zsh.sourceforge.net/Guide/zshguide02.html
