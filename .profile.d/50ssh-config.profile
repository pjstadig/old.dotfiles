#-*- mode: shell-script -*-
ssh_configs=`ls $HOME/.ssh/config.d/*.conf 2> /dev/null`
if [ -n "$ssh_configs" ]; then
    truncate -s0 $HOME/.ssh/config
    for i in $ssh_configs; do
        cat $i >> $HOME/.ssh/config
        echo >> $HOME/.ssh/config
    done
fi
unset ssh_configs
