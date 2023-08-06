[[ -e $HOME/.profile ]] && . $HOME/.profile

export IGNOREEOF=2
export LOCAL_SSH_AUTH_SOCK=$HOME/.ssh/ssh_auth_sock
export PATH=$HOME/.local/bin:$PATH
export PS1='\u@\h:\w\$ '
if [[ -e $LOCAL_SSH_AUTH_SOCK ]]; then
    export SSH_AUTH_SOCK=$LOCAL_SSH_AUTH_SOCK
fi

[[ -e $HOME/.bashrc ]] && source $HOME/.bashrc
