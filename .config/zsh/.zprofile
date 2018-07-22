# Don't duplicate entries in path
typeset -U path

path=(~/bin ~/.cargo/bin ~/go/bin /usr/share/arduino $path[@])
