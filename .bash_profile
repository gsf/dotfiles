#
# ~/.bash_profile
#

# Set up auth command for ssh-agent with keychain
command -v keychain &> /dev/null && eval `keychain -q --eval ~/.ssh/id_rsa`

# set PATH so it includes user's private bin if it exists
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"

[[ -f ~/.bashrc ]] && . ~/.bashrc
