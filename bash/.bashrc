# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# Check the window size after each command and, if necessary,
# Update the values of LINES and COLUMNS.
shopt -s checkwinsize

# gnu global with pygments, https://www.gnu.org/software/global/, http://pygments.org/
export GTAGSCONF=/usr/local/share/gtags/gtags.conf
export GTAGSLABEL=pygments

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
