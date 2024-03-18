
# ~/.bashrc

alias c="clear"
alias cl="clear"
alias ckear="clear"
alias clr="clear"
alias .="cd .."
alias ..="cd ../.."
alias ...="cd ../../.."
alias ....="cd ../../../.."
alias .....="cd ../../../../.."

# Set prompt color to green
#PS1='\[\e[0;32m\]\u@\h:\w\$ \[\e[0m\]'

PS1='\[\e[0;32m\]\u\[\e[0m\]\[\e[0;32m\]@\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

eval "$(dircolors -b)"
export LS_COLORS='di=34:'$LS_COLORS
alias ls='ls --color=auto'

BLUE="\[\033[0;34m\]"

# Replace the directory color in PS1
PS1="${PS1//\[\e[0;34m\]/${BLUE}}"

