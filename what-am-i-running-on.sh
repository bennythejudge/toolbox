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
        cat /etc/redhat-release
elif [[ -e /etc/debian_version ]]; then
        echo "It seems we are in debian land - content of /etc/debian_version"
        cat /etc/debian_version
elif [[ -e /etc/os-release ]]; then
	echo "I found /etc/os-release"
	cat /etc/os-release
elif [[ -e /etc/*-release ]]; then
	echo "Found something /etc/*-release"
	ls /etc/*-release
	for i in $(ls /etc/*-release); do
		echo $i
		cat $i
	done
fi


rc=$(which lsb_release > /dev/null 2>&1)
if [[ $rc == 0 ]]; then
	echo "I found lsb_release"
	lsb_release -a
else
	echo "No lsb_release?"
fi


echo "$(date) - $(basename $0) - completed"
