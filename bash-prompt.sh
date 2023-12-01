# Kai's bash prompt
# Expects __git_ps1 to be defined
# 
# [kai@localhost(debian_chroot) ~/Code/Personal/bash-prompt] (main) 127
# $

__exitcode_ps1() {
  code=$?
  if [ $code '!=' 0 ]; then
    echo -n " $code"
  fi
}

PS1='\[\e[00m\]
[\u@\h${debian_chroot:+\[\e[02m\]($debian_chroot)\[\e[00m\]} \w]$(__git_ps1)\[\e[01m\]$(__exitcode_ps1)\[\e[00m\]
\$ '
