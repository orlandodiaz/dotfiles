
#@IgnoreInspection BashAddShebang
GDRIVE_HOME="/Users/orr/home/ghome"
############################## Shortcuts ###################################################
alias home="cd ~/home"
alias ghome="cd $GDRIVE_HOME"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias gdrive="cd /Volumes/GoogleDrive/My\ Drive"
alias cdcode="cd $GDRIVE_HOME/code"
alias dots="cd $GDRIVE_HOME/dots"
alias play="cd $GDRIVE_HOME/code/play"
alias cdpy="cd $GDRIVE_HOME/code/play/python"
alias django="cd $GDRIVE_HOME/code/play/python/web/django_projects"


alias heroku-rebuild="git reset HEAD~; git push -f heroku master"

###########################################################################################
alias cd..="cd .."
alias cd...="cd ..."
alias cd....="cd ...."
##########################################################################################
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

# list directories including icons
#alias ls="~/code/dotfiles/els -I .DS_tore"

#alias ls=~/elsd | cut -c1-20 | column -c"${COLUMNS:-80}"
############################## cd ########################################################


################################ ls #######################################
# issues: gls may fail to show files in mounted filesystems such as google drive
# Make sure to add an empty space ad the end of every addition below

unalias ls

ls=""
# Use GNU ls instead
ls+="gls "
# Group directories first
ls+="--group-directories-first "
# Add colors
ls+="--color=auto "  # if using regular ls you would use the -G flag instead
# Add forward slashes to folders and @ signs to symlinks
#ls+="-F "
# No quotes around directories and files with spaces
ls+="-N "
# ignore backups (vim and emacs files created ending with a tilde)
ls+="--ignore-backups "
ls+="--ignore='#*' "
# Ignore python cache
ls+="--ignore=__pycache__"



########################### ls -l ######################################

# =============ACTIVE====================

lsl=""

# Use GNU ls instead
lsl+="gls -l "

# Add colors
lsl+="--color=auto "  # if using regular ls you would use the -G flag instead

# Group directories first
lsl+="--group-directories-first "

# Display file sizes in readable format, e.g. 1k, 100MB, 1G
lsl+="-h "

# No quotes around directories and files with spaces
lsl+="-N "

# ignore backups (vim and emacs files created ending with a tilde)
lsl+="--ignore-backups "
lsl+="--ignore='#*' "
# Ignore python cache
lsl+="--ignore=__pycache__ "
#
##===============INACTIVE=================
## Add an inode column
##ls+="-i "
#
## Add forward slashes to folders and @ signs to symlinks
##ls+="-F "

#alias ls=$ls
#alias lsl=$lsl

ls() {
    if [[ $@ == "-l" ]]; then
#        echo $1
#        echo "hello world"
        eval $lsl $@
    else
#        echo "no l found"
        eval $ls $@
    fi
}





########################### ls 2 #######################################


long_ls() {

local VAR="Inode|Permissions|Owner|Group|Size|Modified|Name"

if [ ! "${1}" ]; then
   echo -e "$VAR" | column -t -s"|" && $ls -l
else
   echo -e "$VAR" | column -t -s"|" && $ls -l -i"${1}"
fi
}

alias lls=$"long_ls ${1}"

########################### tree ######################################

tree="tree "
# Always show directories first
tree+="--dirsfirst "
# Add forward slashes to folders and @ signs to symlinks
tree+="-F "
# Ignore certain files or directories
tree+="-I __pycache__ "


alias tree=$tree

########################### exa ########################################

lx="exa "
lx+="-l "
lx+="--header "
lx+="--group "
lx+="--created "
lx+="--modified "
lx+="--accessed "
lx+="--inode "
lx+="--color=never "

# Add forward slashes to folders and @ signs to symlinks
lx+="-F "
lx+="--group-directories-first "
lx+="-I __pycache__"

alias lx=$lx

########################### rm #########################################
rm=""
# Use GNU rm instead
rm+="grm "

# Prompt when removing files and directories (3+ files only) y for yes, n for no
rm+="-I"
alias rm=$rm
#########################################################################

