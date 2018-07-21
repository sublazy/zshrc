PROMPT="$FX[bold]$FG[214]
> %n@%m %* %60<...<%~ %<<
> %{$FX[reset]%}"



# PROMPT="
# %{$terminfo[bold]$fg[blue]%}>%{$reset_color%} \
# %{$fg[cyan]%}%n\
# %{$fg[white]%}@\
# %{$fg[green]%}$(HOST) \
# %{$fg[white]%}in \
# %{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
# ${git_info} \
# %{$fg[white]%}[%*]
# %{$terminfo[bold]$fg[red]%}> %{$reset_color%}"

# if [[ "$USER" == "root" ]]; then
# PROMPT="
# %{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
# %{$bg[yellow]%}%{$fg[cyan]%}%n%{$reset_color%} \
# %{$fg[white]%}at \
# %{$fg[green]%}$(HOST) \
# %{$fg[white]%}in \
# %{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%}\
# ${hg_info}\
# ${git_info} \
# %{$fg[white]%}[%*]
# %{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
# fi
