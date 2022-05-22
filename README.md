# Setting up new environment using Stow and this repo

When setting up a new machine, you can install _Stow_, clone this repo and symlink the packages to quickly be up and running.

## Manual setup

1. `mkdir /Users/lognseth/.dotfiles`
2. `brew install stow`
3. `cd /users/lognseth/dotfiles`
4. Create a directory for each _package_, for example `mkdir zsh`
5. run the `stow` command for each package, for example `stow zsh`
6. Profit

## Automatic setup

1. Download the [Mac installation script](https://gist.github.com/lognseth/91f7ab04f8ce17b92ec88437b2a66e00)
2. Run the script and watch the magic unfold.