#@IgnoreInspection BashAddShebang
# Version 1.0

################################## INITIALIZEMODULES ######################################

if [ -f ~/.bash_colors ]; then
    source ~/.bash_colors
fi

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
if [ -f ~/.bash_prompt ]; then
    source ~/.bash_prompt
fi
if [ -f ~/.bash_functions ]; then
    source ~/.bash_functions
fi

if [ -f ~/.bash_paths ]; then
    source ~/.bash_paths
fi

if [ -f ~/.bash_secrets ]; then
    source ~/.bash_secrets
fi


################################### STARTUP###################################
uptime

################################## JAVA ######################################
#export JAVA_HOME=$(/usr/libexec/java_home)
#export PATH=$PATH:$JAVA_HOME/bin



test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

