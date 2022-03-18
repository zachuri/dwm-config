#!/bin/bash

vpn() {
    state="$(ip a | grep tun0 | grep inet | wc -l)"

if [ $state = 1 ]; then
    printf "ﱾ"
else
    printf ""
fi
}

printf "$(vpn)"
