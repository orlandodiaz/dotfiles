# Dotfiles (OSX)
Dotfiles is own personal dotfile development environment for in OSX. It currently supports many features over a standard bash configuration.
- Show current python environment in prmopt
- Show current git branch in prompt
- Shows date, exit status, and cwd of last executed command
- Up/down arrow to browse intelligently through history
- and more...
<img src="dotfiles.png" height="250">

## Using Setup
Put the dotfiles folder anywhere but your naked home directory.
Ex. ~/code/dotfiles
`git clone [repository] ~/code`

Run `setup.py` on the dotfiles folder to symlink the files to your home directory.

`./setup.py`

## Manually
Otherwise:
Create symbolic links to these files pointing to your home directory. Note: Don't use relative paths as this will cause symlinks to fail.

```
ln -s /Users/orr/code/dotfiles/.vimrc ~/
ln -s /Users/orr/code/dotfiles/.inputrc ~/
ln -s /Users/orr/code/dotfiles/.vim ~/
ln -s /Users/orr/code/dotfiles/.bash_profile ~/
```

