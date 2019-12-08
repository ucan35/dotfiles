# common
alias ll='ls -lv --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias cd..='cd ..'
alias ..='cd ..'
alias go_temp='cd $(mktemp -d)'
alias sc='systemctl'
alias vim='nvim -b' # launch neovim in binary mode in order to make CR appear as ^M

# https://github.com/haikarainen/light
l () {
  if [ -z "$1" ]; then
    command light -G;
  else
    command light -S "$1";
  fi
}
