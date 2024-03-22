# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment Variables
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# GPG
export GPG_TTY=$(tty)

# Custom configurations
# Startup
PS1='%~ 🐙 '
alias ls='ls --color=auto'
alias grep='grep --color=auto'

neofetch
echo "$ grep -n -r \"picoCTF\" ."
history -p

# Shortcuts
alias nv=nvim
alias py="python3 -B"
alias aws="sh ~/.ssh/connect.sh"
alias gpp="g++ -O2"
alias venv="virtualenv venv"
alias black="/home/lturret/.local/bin/black"

# Keybinds
bindkey "^[[H"     beginning-of-line
bindkey "^[[F"     end-of-line
bindkey "^[[3~"    delete-char
bindkey "^[[1;5C"  forward-word
bindkey "^[[1;5D"  backward-word

# (macOS) Make "clear" actually clears buffer instead of move to bottom of buffer.
function magic-double-tab-cmd {
  echo 'clear'
}

function magic-double-tab {
  if ! ( ( $#BUFFER )) && [[ \"$CONTEXT\" == start ]]; then
    BUFFER=$(magic-double-tab-cmd)
    zle accept-line -w
  fi
}

zle -N magic-double-tab
bindkey '\\t\\t' magic-double-tab


# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
