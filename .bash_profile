#@IgnoreInspection BashAddShebang

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


################################## JAVA ######################################
#export JAVA_HOME=$(/usr/libexec/java_home)
#export PATH=$PATH:$JAVA_HOME/bin


################################################################################
#                               PATH: AUTOMATIC
################################################################################
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
#export PATH=$PATH:/Users/system-void/Desktop/sshconnet/


#PATH="/Users/system-void/Desktop/sshconnet/acsm-connect"
export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# MacPorts Installer addition on 2017-07-05_at_20:00:45: adding an appropriate PATH variable for use with MacPorts.
#export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH
export PATH="/usr/local/bin:$PATH"

# MacPorts Installer addition on 2017-10-30_at_22:43:34: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

################################################################################
#                               PATH: MANUAL
################################################################################

# Use applications installed with sudo pip install xx
export PATH="/opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin":$PATH