#@IgnoreInspection BashAddShebang
alias cd..=cd ..
alias code="cd ~/gdrive/home/code"
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

# list directories including icons
#alias ls="~/code/dotfiles/els -I .DS_tore"

#alias ls=~/elsd | cut -c1-20 | column -c"${COLUMNS:-80}"

############################### Listing directories #######################################
ls=""
# Use GNU ls instead
ls+="gls "
# Group directories first
ls+="--group-directories-first "
# Add colors
ls+="--color=auto "
# Add forward slashes to folders and @ to symbolic links ,etc
ls+="-F "

alias ls=$ls
#########################################################################
