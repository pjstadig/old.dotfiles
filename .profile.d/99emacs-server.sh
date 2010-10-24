if ! emacsclient -a /bin/false --eval "nil" >/dev/null 2>&1; then
    /usr/bin/emacs --daemon >/dev/null 2>&1
fi
