[ -n "$PS1" ] && source ~/.bash_profile;

# SSH agent
/usr/bin/keychain --clear $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh