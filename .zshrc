# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='%~ > '
alias ls='lsd --color=auto'
alias grep='grep --color=auto'

# My custom configurations
# Startup
if [[ $PWD/ = /mnt/c/Users/a0919/Documents/Arch/ ]]; then
	cd ~
fi
history -p
clear
neofetch

# Environment Variables
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.json
export XDG_RUNTIME_DIR=/run/user/$(id -u)
export DISPLAY=:0.0
export LIBGL_ALWAYS_INDIRECT=1

# Shortcuts
alias na=nautilus
alias nv=nvim
alias py="python3 -B"
alias gpp="g++ -O2"
alias win="cd /mnt/c/Users/a0919"
alias venv="virtualenv venv"
alias black="/home/lturret/.local/bin/black"

# SSH
alias aws="sh ~/.ssh/connect.sh"
alias lab="sh ~/.ssh/lab.sh"

# Keybinds
bindkey "^[[3~"    delete-char
bindkey "^[[H"     beginning-of-line
bindkey "^[[F"     end-of-line
bindkey "^[[1;5C"  forward-word
bindkey "^[[1;5D"  backward-word

# GPG
GPG_TTY=$(tty)
export GPG_TTY
