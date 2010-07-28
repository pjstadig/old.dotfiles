#-*- mode: shell-script -*-
if [ -e "$HOME/.profile.`hostname`" ]; then
    . "$HOME/.profile.`hostname`"
fi
