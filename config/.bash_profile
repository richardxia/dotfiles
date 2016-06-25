export CLICOLOR=1
export EDITOR=vim
export LOCAL_SSH_AUTH_SOCK=$HOME/.ssh/ssh_auth_sock
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PS1='\u@\h:\w\$ '
if [[ -e $LOCAL_SSH_AUTH_SOCK ]]; then
    export SSH_AUTH_SOCK=$LOCAL_SSH_AUTH_SOCK
fi
export VISUAL=vim

[[ -e $HOME/.bashrc ]] && source $HOME/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
