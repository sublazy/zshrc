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
# Enable grouping of directories, files, make-targets, etc in autocomplete menu
zstyle ':completion:*:matches'         group 'yes'
zstyle ':completion:*'                 group-name ''
zstyle ':completion:*' list-dirs-first true
# Describe grouping categories
zstyle ':completion:*:descriptions' format '%B%F{white}---- %d%f ----'

# Use colors in completion
zstyle ':completion:*:default'         list-colors ${(s.:.)LS_COLORS}

# If case-sensitive completion matches nothing, try insensitive.
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_custom.d/cache

zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:kill:*:*' verbose yes
zstyle ':completion:*:kill:*'   force-list always

# A good symbol for fossil VCS? ꩜


autoload spectrum
spectrum

HISTFILE=~/.zsh_history
HISTSIZE=10000 # Number of entries remembered by a session.
SAVEHIST=20000 # Number of entries in the history file.

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

setopt extended_history

# All sessions will append to the same history file.
setopt appendhistory

# Prepend a command with a space to prevent it from being recorded
setopt hist_ignore_space

setopt hist_ignore_all_dups
setopt hist_reduce_blanks

# Keep history of `cd` as in with `pushd` and make `cd -<TAB>` work.
DIRSTACKSIZE=16
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_minus

# Ignore lines prefixed with '#'.
setopt interactivecomments

setopt extendedglob

# Nobody need flow control anymore (C-S, C-Q).
setopt noflowcontrol

# Use emacs-style key bindings
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename '/home/cs/.zshrc'
# End of lines added by compinstall

# Do query the user before executing 'rm *' or 'rm path/*'
# $ rm -rf *
# zsh: sure you want to delete all the files in /home/dope/foo [yn]?
setopt normstarsilent

export MANWIDTH=80

# TODO nvim if installed. Otherwise vim
export GIT_EDITOR=nvim

source ~/.zsh_custom.d/plugins/liquidprompt/liquidpromptrc-dist
source ~/.zsh_custom.d/plugins/liquidprompt/liquid.theme
source ~/.zsh_custom.d/plugins/liquidprompt/liquidprompt

source ~/.zsh_custom.d/aliases.zsh

# References
# [1]: http://zsh.sourceforge.net/Guide/zshguide02.html
