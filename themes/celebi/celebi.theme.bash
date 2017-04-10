if [[ $UID -eq 0 ]]; then
  # set a red prompt
  USER_COLOR="\[\e[01;31m\]\u\[\e[0m\]"
else
  # set a green prompt
  USER_COLOR="\[\e[01;32m\]\u\[\e[0m\]"
fi

if [ -f ~/scripts/git-prompt.sh ]; then
  source ~/scripts/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE="1"
  export PS1="\[\e[00;37m\][\[\e[0m\]\[\e[01;37m\]\t\[\e[0m\]\[\e[00;37m\]] \[\e[0m\]${USER_COLOR}\[\e[00;37m\]@\[\e[0m\]\[\e[01;35m\]\H\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[01;31m\]\w\[\e[0m\]\[\e[00;37m\] \$(__git_ps1 \" \[\033[35m\]{\[\033[36m\]%s\[\033[35m\]}\") (\$?)\n\\$ \[\e[0m\]"
else
  export PS1="\[\e[00;37m\][\[\e[0m\]\[\e[01;37m\]\t\[\e[0m\]\[\e[00;37m\]] \[\e[0m\]${USER_COLOR}\[\e[00;37m\]@\[\e[0m\]\[\e[01;35m\]\H\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[01;31m\]\w\[\e[0m\]\[\e[00;37m\] (\$?)\n\\$ \[\e[0m\]"
fi

