#!/usr/bin/env bash
set -e              # Exit immediately if a pipeline returns a non-zero status.
set -u              # Treat unset variables and parameters other than the special parameters ‘@’ or ‘*’ as an error when performing parameter expansion.
set -o pipefail     # Return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands in the pipeline exit successfully. 

# All of this should probably be done with a Brewfile


# Install Homebrew
# See: https://brew.sh/
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# List of installed packages
# brew list --installed-on-request
# brew list --casks -1

brew install btop
brew install difftastic
brew install fzf
brew install git
brew install git-delta
brew install git-gui
brew install highlight
brew install jq
brew install openjdk
brew install shellcheck
brew install tlrc
brew install tree
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

brew install --cask disk-inventory-x
brew install --cask ghostty
brew install --cask iina
brew install --cask karabiner-elements
brew install --cask kdiff3
brew install --cask maccy
brew install --cask qlmarkdown
brew install --cask sourcetree
brew install --cask syntax-highlight
brew install --cask typora
