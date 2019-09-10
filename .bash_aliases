# dotfiles git bare repository
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# common
alias ll='ls -l --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ..='cd ..'
alias go_temp='cd $(mktemp -d)'
alias sc='systemctl'

# lgrep - less'd grep
GREP='/usr/bin/rg'
lgrep () {
  command $GREP $@ --color=always | less -R
}

# https://github.com/haikarainen/light
l () {
  if [ -z "$1" ]; then
    command light -G;
  else
    command light -S "$1";
  fi
}
