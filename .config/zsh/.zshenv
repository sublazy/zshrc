ZDOTDIR=${ZDOTDIR:-"${HOME}/.config/zsh"}

# Only unique entries in fpath
typeset -U fpath  

# Locations searched for zsh functions.
fpath=(${ZDOTDIR}/plugins $fpath[@])

