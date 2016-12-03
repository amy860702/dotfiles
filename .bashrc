parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

reset="\[\e[0m\]"
bold="\[\e[1m\]"
red="\[\e[31m\]"
green="\[\e[32m\]"
yellow="\[\e[33m\]"
blue="\[\e[34m\]"

export PS1="$bold$red\u$reset@$bold$green\h$reset[$bold$yellow\w$reset]$bold$blue\$(parse_git_branch)$reset# "
export EDITOR=/usr/bin/vim

bind '"\e[1;5D": backward-word'
bind '"\e[1;5C": forward-word'

alias grep="grep --color=auto"
alias ls="ls -Gal"
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias ga="git add"
alias python="python3"
alias composer="php -d allow_url_fopen=On -d apc.enable_cli=off /usr/local/bin/composer"

export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export PATH=~/bin:$PATH
