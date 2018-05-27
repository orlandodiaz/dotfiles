import os
import sys
import logging as log

HOME = os.environ['HOME']
DOT_FOLDER = "{}/gdrive/home/dots".format(HOME)

# Log to console setings
# set up log to console
console = log.StreamHandler()
console.setLevel(log.INFO)
# set a format which is simpler for console use
formatter = log.Formatter('[%(asctime)s %(filename)18s] %(levelname)-7s - %(message)7s',
                          "%Y-%m-%d %H:%M:%S")
console.setFormatter(formatter)
# add the handler to the root logger
log.getLogger('').addHandler(console)

logger = log.getLogger(__name__)

if __name__ == '__main__':

    cont = False
    y = True
    n = False

    # Get a list of all current files in directory
    log.debug('Getting all available dotfiles . . .')
    files = [dotfile for dotfile in os.listdir(DOT_FOLDER)]

    exclusion = ['setup.sh', 'setup.py', 'README.md', 'README', '.git','.DS_Store', '.idea']

    dotfiles = [file for file in files if file not in exclusion]

    print 'Setup found the following dotfiles:'

    for filename in dotfiles:
        print '\t' + filename

    cont = input(str('Symlinking {} files to {}. Continue? (y/n): '.format(len(dotfiles), HOME)))

    print
    while cont:

        # Create symbolic links of dotfiles to home folder
        for filename in dotfiles:
            print 'Creating symlink for {:<15}'.format(filename),

            try:
                os.symlink("{}/{}".format(DOT_FOLDER, filename),
                           "{}/{}".format(HOME, filename)
                           )
            except OSError as ex:
                print 'Error: File exists'

            else:
                print 'Success'

        log.debug('Finished creating symlinks.')
        log.debug('Exiting...')
        sys.exit(0)
