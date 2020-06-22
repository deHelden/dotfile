export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git tig ruby rails docker docker-compose golang pip)
plugins+=( history history-substring-search httpie sudo vagrant postgres )
plugins+=( osx lein node npm jump gulp mosh )

source $ZSH/oh-my-zsh.sh

## ALIAS
alias c="clear"
alias ez="vi $HOME/.zshrc"
alias server="python -m SimpleHTTPServer"
alias socks="ssh -vND 8888 kim"
alias dpsa="docker ps -a"
alias dcup="docker-compose up"
alias dcupd="docker-compose up -d"

## GIT
GIT_AUTHOR_NAME="Ivan Zinkevich"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="kevichivan@gmail.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
# Set a default editor to avoid "Could not execute editor" error
#git config --global core.editor "/usr/bin/vim"

## NPM
npm set init.author.email "kevichivan@gmail.com"
npm set init.author.name "Ivan Zinkeivch"
npm set init.license "MIT"

## RUBY
eval "$(rbenv init -)"

##### EXPORT

# Node.JS
#export PATH="$PATH:`yarn global bin`"

## JAVA / CLOJURE
#export JAVA_HOME=$(/usr/libexec/java_home)
#export M2=$HOME/.m2
#export PATH=$PATH:$M2

## GO
#export GOPATH=$HOME/code/golang
#export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH

## PURE
#autoload -U promptinit; promptinit
#prompt pure

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

#  Source exports
if [ -f ~/.zsh_exports ]; then
    source ~/.zsh_exports
fi

# Source aliases
if [ -f ~/.zsh_aliases ]; then
    source ~/.zsh_aliases
fi

# Source custom functions
if [ -f ~/.zsh_functions ]; then
    source ~/.zsh_functions
fi
