#-*- mode: shell-script -*-
if [ $TERM = "xterm" ]; then
    export TERM="xterm-256color"
fi

if [ $TERM = "screen" ]; then
    export TERM="screen-256color"
fi
