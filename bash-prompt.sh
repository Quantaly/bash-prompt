# Kai's bash prompt
# Expects __git_ps1 to be defined
# 
# [kai@localhost(debian_chroot) ~/Code/Personal/bash-prompt] (main) 127
# (python_venv) $

__exitcode_ps1() {
  local code=$?
  if [ "$code" != 0 ]; then
    echo -n " $code"
  fi
}

export VIRTUAL_ENV_DISABLE_PROMPT=1

PS1='\[\e[00m\]
[\u@\h${debian_chroot:+\[\e[02m\]($debian_chroot)\[\e[00m\]} \w]$(__git_ps1)\[\e[01m\]$(__exitcode_ps1)\[\e[00m\]
${VIRTUAL_ENV:+\[\e[02m\](${VIRTUAL_ENV##*/})\[\e[00m\] }\$ '
