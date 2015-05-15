# Amend the PATH
PATH="/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/share/npm/bin:/usr/bin:/Users/hari/Source/tools/android/sdk/tools:/Users/hari/Source/tools/android/sdk/platform-tools:$PATH"

# history handling
#
# Erase duplicates
HISTCONTROL=ignoreboth:erasedups
# resize history size
HISTSIZE=5000
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# do not store the 'clear' command
HISTIGNORE=clear

# After each command, append to the history file and reread it
PROMPT_COMMAND="history -n; history -w; history -c; history -r; $PROMPT_COMMAND"

# make it colorful
export CLICOLOR=1

# use glibtoolize
export LIBTOOLIZE=glibtoolize

# Some auto-completion fun for git
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

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

alias nw="/Users/hari/Source/tools/nwjs-v0.12.0-osx-x64/nwjs.app/Contents/MacOS/nwjs"

# Git aliases
alias s="git status"
alias d="git diff"


# Set editor to TextEdit
export EDITOR=/usr/local/bin/nano

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update -g; sudo gem update'

# Clean up 'Open With...' menu's duplicate entries
alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r 
-domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'

# Environment variables for flickr-downloadr-webhook
export FD_WEBHOOK_SECRET=XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
export FD_WEBHOOK_EMAIL_PASSWORD=XXXXXX-XXXXXXXXX-XXXXXXXXXXXXXXX

# Environment variables for swara-server app
export FACEBOOK_ID=XXXXXXXXXXXXXXXX
export FACEBOOK_SECRET=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
export GITHUB_ID=XXXXXXXXXXXXXXXXXXXX
export GITHUB_SECRET=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
export GOOGLE_ID=XXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.XXXX.XXXXXXXXXXXXXXXXX.XXX
export GOOGLE_SECRET=XXXXXXXXXXXXXXXXXXXXXXXX
export TWITTER_KEY=XXXXXXXXXXXXXXXXXXXXXXXXX
export TWITTER_SECRET=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
