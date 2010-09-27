export VISUAL="/usr/bin/emacsclient -c"
export EDITOR="/usr/bin/emacsclient -nw"
export ALTERNATE_EDITOR="/usr/bin/emacs"

if ! emacsclient -a /bin/false --eval "nil" 2>1 1>/dev/null; then
    /usr/bin/emacs --daemon 2>1 1>/dev/null
fi
