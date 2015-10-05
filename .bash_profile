# Amend the PATH
PATH="/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/share/npm/bin:/usr/bin:/Users/hari/Source/tools/android/sdk/tools:/Users/hari/Source/tools/android/sdk/platform-tools:/Users/hari/Source/tools/TFS_Client/TEE-CLC-12.0.2:/Users/hari/Source/tools/TFS_Client/git-tf/git-tf-2.0.3.20131219:$PATH"

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

# colorful grep
export GREP_OPTIONS='--color=auto'
# export GREP_COLOR='1;30;40'

# Some auto-completion fun for git
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

# serve - Start WEBrick here without caching
function serve {
  ruby ~/bin/WEBrick.rb
}

# z - https://github.com/rupa/z
. ~/bin/z.sh

# nvm installed via brew
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm use default

# grunt autocompletion
eval "$(grunt --completion=bash)"

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
alias update='sudo softwareupdate -i -a; brew update; brew upgrade --all; brew cleanup; npm update -g; sudo gem update'

# Clean up 'Open With...' menu's duplicate entries
alias fixow='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r
-domain local -domain user;killall Finder;echo "Open With has been rebuilt, Finder will relaunch"'

# Environment variables for flickr-downloadr build
export FD_CERT_PWD="XXXXXX-XXXXXXXXX-XXXXXXX-XXX-XXXX"
export FLICKR_DOWNLOADR_SHARED_SECRET="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
export FLICKR_DOWNLOADR_CONSUMER_KEY="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
export FLICKR_DOWNLOADR_CONSUMER_SECRET="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Environment varible for flickr-downloadr changelog
export CHANGELOG_GITHUB_TOKEN="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Environment variables for flickr-downloadr-webhook
export FD_WEBHOOK_SECRET=XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
export FD_WEBHOOK_EMAIL_PASSWORD=XXXXXX-XXXXXXXXX-XXXXXXXXXXXXXXX

# Environment variables for swara-server-webhook
export SWARA_WEBHOOK_SECRET=XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX
export SWARA_WEBHOOK_EMAIL_PASSWORD=XXXXXX-XXXXXXXXX-XXXXXXXXXXXXXXX

# Environment variables for swara-server app
export FACEBOOK_ID=XXXXXXXXXXXXXXXX
export FACEBOOK_SECRET=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
export GITHUB_ID=XXXXXXXXXXXXXXXXXXXX
export GITHUB_SECRET=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
export GOOGLE_ID=XXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.XXXX.XXXXXXXXXXXXXXXXX.XXX
export GOOGLE_SECRET=XXXXXXXXXXXXXXXXXXXXXXXX
export TWITTER_KEY=XXXXXXXXXXXXXXXXXXXXXXXXX
export TWITTER_SECRET=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
