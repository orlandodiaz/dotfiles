#@IgnoreInspection BashAddShebang
GDRIVE_HOME="/Users/orr/home/ghome"
############################## Shortcuts ###################################################
alias home="cd ~"
alias ghome="cd $GDRIVE_HOME"
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias gdrive="cd /Volumes/GoogleDrive/My\ Drive"
alias code="cd $GDRIVE_HOME/code"
alias dots="cd $GDRIVE_HOME/dots"
alias play="cd $GDRIVE_HOME/code/play"



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


############################### ls #######################################
# issues: gls may fail to show files in mounted filesystems such as google drive
ls=""
# Use GNU ls instead
ls+="gls "
# Group directories first
ls+="--group-directories-first "
# Add colors
ls+="--color=auto "
# Add forward slashes to folders and @ signs to symlinks
ls+="-F "
# No quotes around directories and files with spaces
ls+="-N "
# Display file sizes in readable format, e.g. 1k, 100MB, 1G
ls+="-h "
# Add an inode column
#ls+="-i "
# ignore backups (vim and emacs files created ending with a tilde)
ls+="--ignore-backups "
ls+="--ignore='#*'"


alias ls=$ls


########################### rm #########################################
rm=""
# Use GNU rm instead
rm+="grm "

# Prompt when removing files and directories (3+ files only) y for yes, n for no
rm+="-I"
alias rm=$rm

long_ls() {

local VAR="Inode|Permissions|Owner|Group|Size|Modified|Name"

if [ ! "${1}" ]; then
   echo -e "$VAR" | column -t -s"|" && $ls -l
else
   echo -e "$VAR" | column -t -s"|" && $ls -l -i"${1}"
fi

}

alias lls=$"long_ls ${1}"
#########################################################################


############################### exa #######################################

alias lx="exa -l --header --group --created --modified --accessed --inode --color=never -F --group-directories-first"
