if [ -t 0 ] && [[ -z $TMUX ]] && [[ $- = *i* ]]; then exec tmux;fi
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

#Colorful prompt
export PS1="\u@\[$(tput sgr0)\]\[\033[38;5;135m\]\h\[$(tput sgr0)\]:\W> \[$(tput sgr0)\]"

# SSH aliases
alias susesloth='ssh samba@susesloth'
alias slothberry='ssh kali@slothberrypi'
alias slothberrypi='ssh kali@slothberrypi'
alias kalisloth450='ssh samba@kalisloth450'
alias issh='ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'


# User specific aliases and functions
alias ll='ls -hlF --color=auto'
alias la='ls -ahlF --color=auto'
alias l='ls -CF'

alias ip='ip -c=always'

setxkbmap -layout us -option ctrl:nocaps
export _JAVA_OPTIONS="-Dswing.aatext=true -Dawt.useSystemAAFontSettings=on"
