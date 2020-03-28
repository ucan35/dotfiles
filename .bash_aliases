# common
alias ll='ls -lv --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias cd..='cd ..'
alias ..='cd ..'
alias go_temp='cd $(mktemp -d)'
alias sc='sudo systemctl'
alias vim='nvim -b' # launch neovim in binary mode in order to make CR appear as ^M
alias vimdiff='nvim -b -R -d' # launch neovim in binary mode in order to make CR appear as ^M
alias ssh='TERM=xterm ssh'
alias rg='rg --no-heading'

# https://github.com/haikarainen/light
l () {
  if [ -z "$1" ]; then
    command light -G;
  else
    command light -S "$1";
  fi
}

tmux-record-toggle() {
  if [ -n "$TMUX" ]; then
    ofile=`date +%H%M-%d%m%y.tlog`
    tmux pipe-pane -o "cat >> $ofile"
    tmux display-message "Screen record toggled"
  else
    return 1
  fi
}
