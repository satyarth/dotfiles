#!/bin/bash

# Source: https://juliansimioni.com/blog/howto-access-a-linux-machine-behind-a-home-router-with-ssh-tunnels/

public_host=s@satyarth.me

createTunnel() {
    /usr/bin/ssh -f -N -R 10022:localhost:22 -L19922:$public_host:22 $public_host
    if [[ $? -eq 0 ]]; then
        echo Tunnel to $public_host created successfully
    else
        echo An error occurred creating a tunnel to $public_host. Return code: $?
    fi
}
/usr/bin/ssh -p 19922 localhost ls > /dev/null
if [[ $? -ne 0 ]]; then
    echo Creating new tunnel connection to $public_host
    createTunnel
fi
