source ~/.profile
#export PS1="└─╼ $USER"
export PS1="💻  \[\e[34m\]\h\[\e[0m\] \[\e[32m\]📒  \w\[\e[0m\]] "
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# list directories including icons
alias ls=~/els -GFh

alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

#alias ‘ls=‘~/els
#alias ls=~/elsd | cut -c1-20 | column -c"${COLUMNS:-80}"


source /Applications/MacKichan/MSITeX.bash

export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
