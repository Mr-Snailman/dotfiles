# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias 'vi'='vim'
alias 'pwgen'='openssl rand -base64 20'
alias 'docker-clean'="docker rmi $(docker images | grep '<none>' | awk '{print $3}')"

