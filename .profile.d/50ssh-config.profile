#-*- mode: shell-script -*-
if [ -d $HOME/.ssh/config.d ]; then
    truncate -s0 $HOME/.ssh/config
    for i in `ls -1 $HOME/.ssh/config.d/*.conf`; do
        cat $i >> $HOME/.ssh/config
        echo >> $HOME/.ssh/config
    done
fi
