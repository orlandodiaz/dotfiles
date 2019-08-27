import os
import sys

from log3 import log

HOME = os.environ['HOME']
print(HOME)
DOT_FOLDER = os.path.join(HOME, "home/ghome/dots")

print(DOT_FOLDER)
if __name__ == '__main__':

    cont = False
    y = True
    n = False

    # Get a list of all current files in directory
    log.debug('Getting all available dotfiles . . .')
    files = [dotfile for dotfile in os.listdir(DOT_FOLDER)]

    exclusion = ['setup.sh', 'setup.py', 'README.md', 'README', '.git', '.DS_Store', '.idea', 'Pipfile', 'Pipfile.lock' , 'utils', '.gitignore', 'LICENSE.TXT']

    dotfiles = [file for file in files if file not in exclusion]

    log.info('Setup found the following dotfiles:')

    for filename in dotfiles:
        print('\t' + filename)

    cont = input(str('Symlinking {} files to {}. Continue? (y/n): '.format(len(dotfiles), HOME)))

    while cont:

        # Create symbolic links of dotfiles to home folder
        for filename in dotfiles:
            log.info('Creating symlink for {:<15}'.format(filename))

            try:
                os.symlink("{}/{}".format(DOT_FOLDER, filename),
                           "{}/{}".format(HOME, filename)
                           )
            except OSError as ex:
                log.error(ex)

            else:
                log.success('Success')

        log.debug('Finished creating symlinks.')
        log.debug('Exiting...')
        sys.exit(0)
