# Homebrew won't be installed on non macOS systems
if command -v brew >/dev/null 2>&1; then
    HOMEBREW_PREFIX="$(brew --prefix)"
else
    HOMEBREW_PREFIX="/usr/local"
fi

# Put gui applications in personal Applications folder.  It doesn't need sudo permission.
export HOMEBREW_CASK_OPTS="--appdir='$HOME/Applications' --require-sha"

# only upgrade the things I asked to upgrade, not all dependencies as well
export HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK=1

export BROWSER=open
export EDITOR=code

#fix for Docker problem:  https://github.com/docker/for-mac/issues/770
#export DOCKER_HOST=tcp://localhost:1234

# less syntax highlighting + source-highlight installation
# https://www.gnu.org/software/src-highlite/
# export LESSOPEN="| /usr/local/bin/src-hilite-lesspipe.sh %s"
# export LESS=' --RAW-CONTROL-CHARS --tabs=4'
# export LESS=' --tabs=4'

# Pipe Highlight to less
export LESSOPEN="| highlight %s --out-format xterm256 --force -s edit-xcode --no-trailing-nl"
export LESS=" -R"
alias less='less --long-prompt --line-numbers --hilite-search --status-column --ignore-case --underline-special --tabs=4'

# Use "highlight" in place of "cat"
# alias cat="highlight $1 --out-format xterm256 -l --force -s edit-xcodet --no-trailing-nl"
