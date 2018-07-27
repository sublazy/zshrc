if [ -x "$(command -v nvim)" ]; then
    alias ovim="/usr/bin/vim"    # old (original) vim
    alias vim="nvim"             # neovim
fi

alias git="git --no-pager"
alias vc="vcsh"
alias egrep="egrep --color=auto"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ls="ls --color=auto --human-readable --group-directories-first"
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"

alias zf='fasd -f'        # file
alias zd='fasd -d'        # directory
alias za='fasd -a'        # any
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zed='fasd -f -e vim' 	# z-edit
alias zop='fasd -f -e xdg-open'	# z-open

alias view="vim -R -c 'set foldmethod=syntax' -c 'set nonumber' -"

# Global piping aliases
alias -g .g='| egrep'
alias -g .gi='| egrep -i'
alias -g .v='| vim -'
alias -g .view='| view'
alias -g .h='| head'
alias -g .t='| tail'
alias -g .h20='| head -20'
alias -g .t20='| tail -20'
alias -g .h40='| head -40'
alias -g .t40='| tail -40'
alias -g .wcl='| wc -l'
