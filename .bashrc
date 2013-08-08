# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#IP_SUFFIX=`/sbin/ifconfig eth0 | grep 'inet addr:' | gawk '{print $2}' | gawk -F. '{printf("%s.%s", $3, $4)}'`
#PS1='\u@^$IP_SUFFIX:\w\$ '

export TERM="xterm-256color"
alias ssh='TERM=xterm ssh'
alias ta4x='tmux attach-session -t 4x'
alias ta-online='tmux attach-session -t online'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.rails.bash ]; then
  . ~/.rails.bash
fi

if [ -f ~/.git-flow-completion.bash ]; then
  . ~/.git-flow-completion.bash
fi

alias g0='ssh bitbrothers@server000'
alias g1='ssh bitbrothers@server001'
alias g2='ssh bitbrothers@server002'
alias g3='ssh bitbrothers@server003'
alias qf='git add .; git commit -m "fix"; git push'
alias qc='git add .; git commit -m "fix"'

export PATH=/home/bitbrothers/php/bin:$PATH

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
