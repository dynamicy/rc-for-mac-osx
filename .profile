#set svn default editor
export SVN_EDITOR="vim"

#set svn default editor
export GIT_EDITOR="vim"

#set path
export PATH=/opt/local/bin:/opt/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:$PATH

#enables color in the terminal bash shell
export CLICOLOR=1

#sets up the color scheme for list
export LSCOLORS=gxfxcxdxbxegedabagacad

#sets up the prompt color (currently a green similar to linux terminal)
export PS1='\e[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$'

#enables color for iTerm
export TERM=xterm-color

#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'
alias l='ls -hla'

#last JDK 6 by Apple
export JAVA_6_HOME=/System/Library/Frameworks/JavaVM.framework/Home
#latest JDK 7 by Oracle
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
#latest preview JDK 8 by Oracle
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
 
#default JDK is  7
export JAVA_HOME=$JAVA_7_HOME

#Make aliases to switch from one to another
alias java6='export JAVA_HOME=$JAVA_6_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java8='export JAVA_HOME=$JAVA_8_HOME'

if [ "${BASH-no}" != "no" ];

	then [ -r /etc/bashrc ] && . /etc/bashrc

fi
