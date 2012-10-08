[ -z "$PS1" ] && return

export LSCOLORS=exgxfbcbCxhxCxCxxxxx

export PS1='\[\e[32;1m\]\u@\h\[\e[36;1m\][\w]\[\e[32;1m\]\$\[\e[0m\] '

export EDITOR='emacs -nw'

HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
HISTCONTROL=ignoreboth

shopt -s histappend
shopt -s checkwinsize

force_color_prompt=yes

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#EOF

