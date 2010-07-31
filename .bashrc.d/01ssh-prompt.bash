if [ -n "$SSH_CONNECTION" ]; then
    PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:$PS1"
fi
