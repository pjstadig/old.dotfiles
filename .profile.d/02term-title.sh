case "$TERM" in
    xterm*|rxvt*|screen*)
            if [ -n "$SSH_CONNECTION" ]; then
                PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h:\w\a\]$PS1"
            else
                PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\w\a\]$PS1"
            fi
            ;;
    *)
            ;;
esac
