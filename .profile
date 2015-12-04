#set svn default editor
export SVN_EDITOR="vim"

#set svn default editor
export GIT_EDITOR="vim"

#set path
export PATH=~/.rvm/scripts/rvm:/bin:/sbin:/usr/bin:/usr/sbin:$PATH

#enables color in the terminal bash shell
export CLICOLOR=1

# Custom $PS1
RED='\[\e[0;31m\]'
BRED='\[\e[1;31m\]'
BLUE='\[\e[0;34m\]'
BBLUE='\[\e[1;34m\]'
CYAN='\[\e[0;36m\]'
BCYAN='\[\e[1;36m\]'
NC='\[\e[0m\]'
BLACK='\[\e[0;30m\]'
BBLACK='\[\e[1;30m\]'
GREEN='\[\e[0;32m\]'
BGREEN='\[\e[1;32m\]'
YELLOW='\[\e[0;33m\]'
BYELLOW='\[\e[1;33m\]'
MAGENTA='\[\e[0;35m\]'
BMAGENTA='\[\e[1;35m\]'
WHITE='\[\e[0;37m\]'
BWHITE='\[\e[1;37m\]'

function parse_git_branch {     
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

#sets up the color scheme for list
export LSCOLORS=gxfxcxdxbxegedabagacad

#sets up the prompt color (currently a green similar to linux terminal)
PS1="$CYAN\$(date +%H:%M) $YELLOW[$BLUE\u@\h:$RED\w$YELLOW]$NC\n$YELLOW\$(parse_git_branch)$NC% " 

# Bash completion
BASH_COMPLETION_COMPAT_DIR=/opt/bash_completion.d
for i in $(LC_ALL=C command ls "$BASH_COMPLETION_COMPAT_DIR"); do
    i=$BASH_COMPLETION_COMPAT_DIR/$i
    # [[ ${i##*/} != @(Makefile*|.*) && -f $i && -r $i ]] && . "$i"
    [[ -f $i && -r $i ]] && . "$i"
done

#enables color for iTerm
export TERM=xterm-color

#sets up proper alias commands when called
alias ls='ls -G'
alias l='ls -hl'
alias la='ls -hla'
alias lw='ls | wc -l'
alias df='df -h'

# Set python version 2 or 3
alias python=python2

#last JDK 6 by Apple
export JAVA_6_HOME=/System/Library/Frameworks/JavaVM.framework/Home
#latest JDK 7 by Oracle
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
#latest preview JDK 8 by Oracle
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home
 
#default JDK is 7
export JAVA_HOME=$JAVA_7_HOME

#Android Home path
export ANDROID_HOME=/usr/local/opt/android-sdk

#Make aliases to switch from one to another
alias java6='export JAVA_HOME=$JAVA_6_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'

if [ "${BASH-no}" != "no" ];
	then [ -r /etc/bashrc ] && . /etc/bashrc
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
