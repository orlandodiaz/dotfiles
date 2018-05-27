#@IgnoreInspection BashAddShebang
###############################################################################
#                               FUNCTIONS
###############################################################################

# Counts the number of files (including directories) in the current directory
function items() {
  cnt=$(/bin/ls -afq -l | wc -l)
  echo $[$cnt-4]
}

# cd() { builtin cd "$@" && ~/code/dotfiles/els; }
# cd() { builtin cd "$@" && ls; }

function lss() {
  items=$(/bin/ls -afq -l | wc -l)
  if [ "$items" -gt 40 ]; then
    ~/els | tail -30 | head -30;
    echo "Listing truncated as there were many items.";
    echo "This directory contains $items items";
  fi
}

function ff() {
  finder_path=$(/Users/orr/gdrive/home/dots/sc/get_finder_path.sh)
#  echo $finder_path
  cd "$finder_path"
}