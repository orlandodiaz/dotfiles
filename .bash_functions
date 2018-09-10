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
 cd() { builtin cd "$@" && ls; }

##############################Running source code############################
# Currently only CLANg, and objective C is supported
 run() {
#    echo "you typed" $1;
    file=$1


    if [[ $file == *.cpp ]]; then
#        echo "This is C++ source code"
        g++ -std=c++11 "$@";

    elif [[ $file == *.java ]]; then
        echo "Compiling $file ..."
        javac "$1";

    elif [[ $file == *.m ]]; then
#        echo "This is objective c source code"
        gcc -framework Foundation "$@";
    elif [[ $file == *.c ]]; then
        gcc "$1";
    fi

    if [ $? != 0 ]; then
        echo "Failed to compile"
    elif [[ $file == *.java ]]; then
         echo "Executing $file ..."

#        a=""
#        a+="java "
#        a+='-Djava.util.logging.SimpleFormatter.format="%1\$tY-%1\$tm-%1\$td %1\$tH:%1\$tM:%1\$tS %4\$s %2\$s %5\$s%6\$s%n" '
#        a+="${file%%.*}"
#        $a
        # Logging options for java. Ex 2018-08-20 17:09:31 FINE Logging main test
        java -Djava.util.logging.SimpleFormatter.format="%1\$tY-%1\$tm-%1\$td %1\$tH:%1\$tM:%1\$tS %4\$s %2\$s %5\$s%6\$s%n" "${file%%.*}" "$2" "$3"
    else
        chmod 777 a.out #fixes issue where a.out wont be executable on google drife fs
        ./a.out "$2" "$3" "$4"
    fi
 }

############################################################################
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
