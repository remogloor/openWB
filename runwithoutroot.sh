#!/bin/bash

if id openwb &>/dev/null; then
    echo 'user found'
else
    echo 'user not found'
    sudo useradd -s /usr/sbin/nologin -G dialout,input,tty,gpio -r -p openwb openwb
fi

