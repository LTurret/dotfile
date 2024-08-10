# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PROMPT="🐙 %~ $ "
alias ls='lsd --color=auto'
alias grep='grep --color=auto'

# My custom configurations
# Startup
if [[ $PWD/ = /mnt/c/Users/a0919/Documents/Arch/ ]]; then
	cd ~
fi
history -p
clear
fastfetch
echo "\n"

# Environment Variables
export PATH="$HOME/.cargo/bin:$PATH:$HOME/.local/bin"

# GPG
GPG_TTY=$(tty)
export GPG_TTY
gpg-connect-agent updatestartuptty /bye >/dev/null

# Shortcuts
cb_function() {
  if [ -z "$1" ]; then
    echo "Usage: cb <file_path>"
    return 1
  fi

  cat "$1" >> /mnt/c/Users/a0919/Desktop/clipboard.txt
}

alias cb=cb_function
alias cf="clang-format --style Google --dump-config > .clang-format"
alias ep="explorer.exe ."
alias na="nautilus"
alias nv="nvim"
alias py="python3 -B"
alias gpp="g++ -O2 -std=c++23 -o main"
alias gpc="g++ -O2 -std=c++23 -o main && ./main"
alias win="cd /mnt/c/Users/a0919/Desktop/"
alias venv="virtualenv venv"
alias black="/home/lturret/.local/bin/black"

# SSH
alias aws="sh ~/.ssh/connect.sh"
alias lab="sh ~/.ssh/lab.sh"
alias pser="sh ~/.ssh/pser.sh"

# Keybinds
bindkey "^[[3~"    delete-char
bindkey "^[[H"     beginning-of-line
bindkey "^[[F"     end-of-line
bindkey "^[[1;5C"  forward-word
bindkey "^[[1;5D"  backward-word
