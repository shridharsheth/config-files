# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

function DelGitBranch {
   git push origin --delete $1
   git branch --delete $1
}

GIT_PS1_SHOWDIRTYSTATE=true
. ~/.git-prompt.sh
. ~/.git-completion.sh

export PS1="\h \[\033[1;30m\]\$(__git_ps1) \[\033[0;0m\]\w >"
#alias for git
alias gitc='git clone'
alias gith='git help'
#alias vim='gvim'

alias envs='echo LIBRARY_PATH $LIBRARY_PATH; echo LD_LIBRARY_PATH $LD_LIBRARY_PATH;  echo PATH $PATH;  echo C_INCLUDE_PATH $C_INCLUDE_PATH; echo CPLUS_INCLUDE_PATH $CPLUS_INCLUDE_PATH; echo PYTHONPATH $PYTHONPATH'
alias m='make -Rr -j 8 -C `pwd | cut -d "/" -f 1,2,3,4,5`'
alias pbin='pushd `pwd | cut -d "/" -f 1,2,3,4,5`/build/x86-64/debug/bin'
alias pext='pushd `pwd | cut -d "/" -f 1,2,3,4,5`/ext'
alias prt='pushd `pwd | cut -d "/" -f 1,2,3,4,5`'
alias pcon='pushd `pwd | cut -d "/" -f 1,2,3,4,5`/build/x86-64/debug/etc/debesys/'
alias init='. ~/.bashrc'
alias tlsrh='/bin/ls -tr /volatile/logs/*_send_recv_* | tail -1 | xargs tail -f | sed -u "s/\x01/  /g"'
alias tlsr='/bin/ls -tr /volatile/logs/*_send_recv_* | tail -1 | xargs tail -f | sed -u "s/\x01/  /g" | grep --line-buffered -v 35=0'
alias tloc='sudo tail -f /var/log/messages'
alias vloc='sudo gvim -nw /var/log/messages'
alias rmvol='rm /volatile/logs/*'
alias jtrader='/usr/java/jdk1.7.0_03/bin/java -cp JTrader.jar JTrader &'
alias ttrader='./run python ./build/x86-64/debug/python/tt/ttrader/t_trader.py --lbm-config /home/shridhar/etc/debesys/lbm_lo.conf -c ~/etc/debesys/T_Trader.conf -l ~/var/log/debesys/'
alias cme='./run build/x86-64/release/bin/cme -f -v -l ~/var/log/debesys/ -c ~/etc/debesys/cme_oc_config.conf -m config/lbm_config_lo.xml --disable-exchange-link-download --sendrecvdir ~/var/lib/'
alias backchannel='./run ttus_lbm_pub -v --lbm-config /home/shridhar/etc/debesys/lbm_lo.conf --config /home/shridhar/etc/debesys/ttus_lbm_pub.conf --stdout'
alias bookie='./run bookie -v --lbm-config /home/shridhar/etc/debesys/lbm_lo.conf --config /home/shridhar/etc/debesys/bookie.conf --stdout'
alias ziplw='zip -r ledgerweb.zip application.py requirements.txt tt/messaging/ tt/ledger/ tt/__init__.py'

function upd()
{
    ./run python deploy/chef/scripts/upload_debesys.py --tag $1 
}

alias ttrader='./run python ./build/x86-64/debug/python/tt/ttrader/t_trader.py'
alias updebesys='./run python deploy/chef/scripts/upload_debesys.py'

alias ttrader='./run python ./build/x86-64/release/python/tt/ttrader/t_trader.py'
alias updebesys='./run python deploy/chef/scripts/upload_debesys.py'
alias cme='./run build/x86-64/release/bin/cme -f -v -l ~/var/log/debesys/ -c ~/etc/debesys/cme_oc_config.conf -m config/lbm_config_lo.xml --disable-exchange-link-download --sendrecvdir ~/var/lib/'
function m_()
{
    # The $@ variable contains all the arguments.
    make -Rr -j 8 -C `git rev-parse --show-toplevel` "$@"
    if [ $? == 0 ]; then
        echo COMPILE SUCCESSFUL!
    else
        echo COMPILE FAILED!
    fi
}
alias m=m_

export PATH=$PATH:/opt/meld-1.6.1/bin/:/home/shridhar/opt/idea-IC-129.1359/bin/:/home/shridhar/cmake-2.8.12-Linux-i386/bin/:/home/shridhar/ext/linux/x86-64/release/opt/gcc-4.8.1/bin/
export EDITOR=vi
export AWS_ACCESS_KEY_ID=AKIAIR336Z6UDB6KPPMQ
export AWS_SECRET_ACCESS_KEY=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

