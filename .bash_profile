# Amend the PATH
PATH="/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/share/npm/bin:/usr/bin:/Users/hari/Source/tools/android/sdk/tools:/Users/hari/Source/tools/android/sdk/platform-tools:$PATH"

# history handling
#
# Erase duplicates
export HISTCONTROL=erasedups
# resize history size
export HISTSIZE=5000
# append to bash_history if Terminal.app quits
shopt -s histappend
# don't store the 'clear' command
export HISTIGNORE=clear

# make it colorful
export CLICOLOR=1

# use glibtoolize
export LIBTOOLIZE=glibtoolize

# Some auto-completion fun for git
source ~/.git-completion.bash

# serve - Start WEBrick here without caching
function serve {
  ruby ~/bin/WEBrick.rb
}

# grunt autocompletion
eval "$(grunt --completion=bash)"

# z - https://github.com/rupa/z
. ~/bin/z.sh

# Some aliases
alias log="git log --decorate --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias octopress="bundle exec rake"

alias showhidden="defaults write com.apple.Finder AppleShowAllFiles TRUE; killall Finder"

alias hidehidden="defaults write com.apple.Finder AppleShowAllFiles FALSE; killall Finder"

alias nw="/Users/hari/Source/tools/node-webkit-v0.11.5-osx-x64/node-webkit.app/Contents/MacOS/node-webkit"

# Git aliases
alias s="git status"
alias d="git diff"


# Set editor to TextEdit
export EDITOR=/Applications/TextEdit.app/Contents/MacOS/TextEdit

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update -g; sudo gem update'



