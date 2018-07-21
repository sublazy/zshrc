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

# Enable key-driven interface with higlighting.
zstyle ':completion:*' menu select

# Use colors in completion
zstyle ':completion:*:default'         list-colors ${(s.:.)LS_COLORS}

# Autocomplete options also in aliased commands.
setopt COMPLETE_ALIASES


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


source ~/.zsh_custom.d/cezary.zsh-theme
source ~/.zsh_custom.d/aliases.zsh

# References
# [1]: http://zsh.sourceforge.net/Guide/zshguide02.html
