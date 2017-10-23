
export CLICOLOR=1
export TERM=xterm-256color

# puts a title in the terminal window
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

export JAVA_HOME=$(/usr/libexec/java_home)

export PATH=$PATH:$JAVA_HOME/bin

#export PS1="└─╼ $USER"
export PS1="$: "
#export PS1="\[\e[1;31m\]\u\[\e[m\]@\[\e[1;32m\]\h\[\e[m\] \[\e[1;34m\][\W]\e[m\] "
#PS1='\[\e[1;91m\][\u@\h \w]\$\[\e[0m\] '

#export PS1="💻  \[\e[34m\]\h\[\e[0m\] \[\e[32m\]📒  \w\[\e[0m\]] "
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxBxegedabagabad # Doesn't seem to work in conjunction with els at the moment. Find a way to fix that


# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
#alias cd..=cd ..

#alias items="/bin/ls -afq -l | wc -l" #counts the number of files

function items() {
  cnt=$(/bin/ls -afq -l | wc -l)
  echo $[$cnt-4]
}

cd() { builtin cd "$@" && ~/code/dotfiles/els; }

function lss() {
  items=$(/bin/ls -afq -l | wc -l)
  if [ "$items" -gt 40 ]; then
    ~/els | tail -30 | head -30;
    echo "Listing truncated as there were many items.";
    echo "This directory contains $items items";
  fi
}

# list directories including icons
alias ls="~/code/dotfiles/els"\
" -I .DS_tore"

alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

#alias ‘ls=‘~/els
#alias ls=~/elsd | cut -c1-20 | column -c"${COLUMNS:-80}"


source /Applications/MacKichan/MSITeX.bash

export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH=$PATH:/Users/system-void/Desktop/sshconnet/

#PATH="/Users/system-void/Desktop/sshconnet/acsm-connect"
export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

##
# Your previous /Users/system-void/.bash_profile file was backed up as /Users/system-void/.bash_profile.macports-saved_2017-07-05_at_20:00:45
##

# MacPorts Installer addition on 2017-07-05_at_20:00:45: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

alias code="cd ~/code"
