# dotfiles (OSX)
Dotfiles is own personal dotfile development environment for in OSX. It currently supports many features over a standard bash configuration.
- Show current python environment in prompt. Enclosed in square brackets. Ex: `[myenv]`
- Show current git branch in prompt Ex: `(new-feature-branch)`
- Shows date, exit status, and cwd of last executed command. This is shown on the bottom right after each command
- Up/down arrow to browse intelligently through history
- and more...

## Installation
Installation is done by creating symbolic links from these repositories to your home directory
### Installing automatically using Setup

Clone this repository anywhere that is not your home directory and you have read/write access to.

    git clone [repository] ~/dots

Run `setup.py`  to symlink these dotfiles files to your home directory.

    python setup.py

## IDEs
If configure Intellij for syntax highlighting, go into the File types menu. Find The bash bourne shell and add the following

    .bash*
    *.osx


### Manual installation
Create symbolic links to these files pointing to your home directory. Note: Don't use relative paths as this will cause symlinks to fail.

```
ln -s /Users/YOUR_USERNAME/code/dotfiles/.vimrc ~/
ln -s /Users/YOUR_USERNAME/code/dotfiles/.inputrc ~/
ln -s /Users/YOUR_USERNAME/code/dotfiles/.vim ~/
ln -s /Users/YOUR_USERNAME/code/dotfiles/.bash_profile ~/
```

## Requirements
- Python 2.7

## Exclude files

You can exclude files that you don't want to be symlinked by adding them to the `exclusions` variable

