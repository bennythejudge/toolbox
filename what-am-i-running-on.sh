#!/usr/bin/env bash

echo "$(date) - $(basename $0) - starting"
echo "Hostname: $(hostname)"

if [[ -e /proc/version ]]; then
        echo "Content of /proc/version:"
        cat /proc/version
else
        echo "I cannot find /proc/version ?????"
fi

echo "uname -a: $(uname -a)"

if [[ -e /etc/redhat-release ]]; then
        echo "Smells like a RH distro - content of /etc/redhat-release"
        echo "content of /etc/redhat-release: $(cat /etc/redhat-release)"
elif [[ -e /etc/debian_version ]]; then
        echo "It seems we are in debian land"
        echo "content of /etc/debian_version: $(cat /etc/debian_version)"
else
        echo "Neither RH nor Debian - what am I?"
fi

echo "$(date) - $(basename $0) - completed"
