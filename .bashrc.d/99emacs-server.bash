if ! emacsclient -a /bin/false --eval "nil" 2>1 1>/dev/null; then
    /usr/bin/emacs --daemon 2>1 1>/dev/null
fi
