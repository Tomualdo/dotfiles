# git
if [ -f ~/.bash_git ]; then
    . ~/.bash_git
fi
#export PS1="\u@\h:\w \$(parse_git_branch) $ "
export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \$(parse_git_branch) $ "
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

