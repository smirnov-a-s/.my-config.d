# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Example aliases
# alias ohmyzsh="emacsclient ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew osx screen history-substring-search)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:
export PATH=$PATH:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:

export CC=/usr/bin/gcc
export CXX=/usr/bin/g++

export EDITOR=emacsclient
export PAGER=most

export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig/
export GROOVY_HOME=/usr/local/opt/groovy/libexec

alias l="ls -lah"
alias t="tree"
alias zshconfig="emacsclient ~/.zshrc"
alias source-zshconfig="source ~/.zshrc"
alias rc="~/.emacs.d/vendor/rtags/build/bin/rc"
alias rdm="~/.emacs.d/vendor/rtags/build/bin/rdm"
alias rcl="~/.emacs.d/vendor/rtags/build/bin/rc -J ."

function rcp() {
    ~/.emacs.d/vendor/rtags/build/bin/rc -w $1
}

function find-file() {
    find . -name "*$1*"
}

function lgrep() {
    l | grep $1
}
