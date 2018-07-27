# Sourcing order [1].
#
# ~/.zshenv         Usually run for every zsh.
# ~/.zprofile       Run for login shells.
# ~/.zshrc          Run for interactive shells.
# ~/.zlogin         Run for login shells.

Z=${ZDOTDIR}


# Autocompletion Settings
# ------------------------------------------------------------------------------
# See [3] for the meaning of '-Uz'
autoload -Uz compinit && compinit

# Settings generated by `compinstall`.
zstyle ':completion:*' completer _complete _ignored

# Enable key-driven interface with higlighting.
zstyle ':completion:*' menu select=0

# Enable grouping of directories, files, make-targets, etc in autocomplete menu
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-dirs-first true

# Describe grouping categories
zstyle ':completion:*:descriptions' format '%B%F{white}---- %d%f ----'

# Use colors in completion
zstyle ':completion:*:default' list-colors ''
#zstyle ':completion:*' list-colors ''

# Case-insensitive matching first. Then substrings.
# Settings generated by `compinstall`.
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'l:|=* r:|=*'
#zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'l:|=* r:|=*'
#zstyle ':completion:*' matcher-list '' '+m:{[:lower:]}={[:upper:]}' 'l:|=* r:|=*'

# `cd -<TAB>` will select the first position immediately
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select=1

# `cd <TAB>` will not select anything
zstyle ':completion:*:*:cd:*:local-directory' menu yes select=0

# Self-explanatory options
zstyle ':completion:*' use-cache true
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:kill:*:*' verbose yes
zstyle ':completion:*:kill:*' force-list always

# Don't use the old zsh completion system
zstyle ':completion:*' use-compctl false


# History Settings
# ------------------------------------------------------------------------------
HISTFILE="$Z/.zsh_history"
HISTSIZE=10000 # Number of entries remembered by a session.
SAVEHIST=20000 # Number of entries in the history file.

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Save also timestamps and elapsed time.
setopt extended_history

# Add lines to history file as soon as their commands exit.
setopt share_history

# Prepend a command with a space to prevent it from being recorded
setopt hist_ignore_space

# Cleaner history
setopt hist_ignore_all_dups
setopt hist_reduce_blanks

# Keep history of `cd` as in with `pushd` and make `cd -<TAB>` work.
DIRSTACKSIZE=16
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_minus


# Misc Settings
# ------------------------------------------------------------------------------
# Use emacs-style key bindings
bindkey -e

# Extended globs
setopt extendedglob

# Enable '# comments' in interactive mode
setopt interactivecomments

# Nobody need flow control anymore (C-S, C-Q).
setopt noflowcontrol

# Ask for confirmation before executing 'rm *' or 'rm path/*'
setopt normstarsilent


# Initialize fasd plugin
eval "$(fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install)"

# Search a keyword in the history [2].
hist-search() { fc -lim "*$@*" 1 }


if [ -x "$(command -v nvim)" ]; then
	export EDITOR="nvim"
else
	export EDITOR="vim"
fi

export VISUAL=${EDITOR}
export GIT_EDITOR=${EDITOR}
export MANWIDTH=80

# Spectrum provides color arrays: $FG[000], $BG[000], $FX[000]
autoload -Uz spectrum && spectrum           
source "$Z/zle.zsh"
source "$Z/aliases.zsh"
source "$Z/prompt.zsh"


# References
# [1]: http://zsh.sourceforge.net/Guide/zshguide02.html
# [2] https://superuser.com/questions/232457/zsh-output-whole-history
# [3] https://unix.stackexchange.com/a/33898
