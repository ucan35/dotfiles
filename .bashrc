# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Check the window size after each command and, if necessary,
# Update the values of LINES and COLUMNS.
shopt -s checkwinsize

# bash history configurations
HISTSIZE=-1
HISTFILESIZE=-1
HISTCONTROL=ignoredups

export EDITOR=nvim

# enable fzf keybindings, https://github.com/junegunn/fzf
source /usr/share/fzf/key-bindings.bash
source /usr/share/fzf/completion.bash

# gnu global with pygments (and universal-ctags), https://www.gnu.org/software/global/, http://pygments.org/
# https://github.com/universal-ctags/ctags
#export GTAGSCONF=/usr/local/share/gtags/gtags.conf
#export GTAGSLABEL=pygments

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
