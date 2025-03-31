# git

This folder should live in `~/.config/git`

Read the [Files](https://git-scm.com/docs/git-config#FILES) section of `git config --help`

git automatically looks for config files in ~/.config/git.  There's no need to symlink anything.

At the end of the config file, it will load config_local.  config_local should contain settings that should not be committed.