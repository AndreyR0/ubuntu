#
# .bash_profile
#

# Get the aliases and functions
if [ -f /root/.bashrc ]; then
  source /root/.bashrc
fi

# Colorize directory listing
alias ls="ls -ph --color=auto"

# Colorize grep
if echo hello|grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS="--color=auto" GREP_COLOR="1;31"
fi

# Shell
export CLICOLOR="1"
if [ -f /root/scripts/git-prompt.sh ]; then
  source /root/scripts/git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE="1"
  export PS1="\[\033[40m\]\[\033[33m\][ \u@\H:\[\033[32m\]\w\$(__git_ps1 \" \[\033[35m\]{\[\033[36m\]%s\[\033[35m\]}\")\[\033[33m\] ]$\[\033[0m\] "
else
  export PS1="\[\033[40m\]\[\033[33m\][ \u@\H:\[\033[32m\]\w\[\033[33m\] ]$\[\033[0m\] "
fi
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=1;40:bd=34;40:cd=34;40:su=0;40:sg=0;40:tw=0;40:ow=0;40:"

# Git
source /root/scripts/git-completion.sh

# Z
source /root/scripts/z.sh
