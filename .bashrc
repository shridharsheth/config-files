# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#alias for git
alias gitc='git clone'
alias gith='git help'

alias envs='echo LD_LIBRARY_PATH $LD_LIBRARY_PATH;  echo PATH $PATH;  echo C_INCLUDE_PATH $C_INCLUDE_PATH; echo CPLUS_INCLUDE_PATH $CPLUS_INCLUDE_PATH; echo PYTHONPATH $PYTHONPATH'
alias m='make -Rr -j 8 -C `pwd | cut -d "/" -f 1,2,3,4,5`'
alias pdeb='pushd `pwd | cut -d "/" -f 1,2,3,4,5`'
alias pbin='pushd `pwd | cut -d "/" -f 1,2,3,4,5`/build/x86-64/debug/bin'
alias pext='pushd `pwd | cut -d "/" -f 1,2,3,4,5`/ext'
alias prt='pushd `pwd | cut -d "/" -f 1,2,3,4,5`'
alias init='. ~/.bashrc'
alias tlsrh='/bin/ls -tr /volatile/logs/*_send_recv_* | tail -1 | xargs tail -f | sed -u "s/\x01/  /g"'
alias tlsr='/bin/ls -tr /volatile/logs/*_send_recv_* | tail -1 | xargs tail -f | sed -u "s/\x01/  /g" | grep --line-buffered -v 35=0'
alias tloc='sudo tail -f /var/log/messages'
alias vloc='sudo gvim -nw /var/log/messages'
alias rmvol='rm /volatile/logs/*'
# User specific aliases and functions
