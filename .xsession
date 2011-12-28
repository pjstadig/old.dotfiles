#!/bin/bash

if [ -x ~/src/stumpwm/stumpwm ]; then
    echo "Using stumpwm from source"
    STUMPWM=~/src/stumpwm/stumpwm
else
    echo "Using stumpwm from system install"
    STUMPWM=stumpwm
fi

exec $STUMPWM
