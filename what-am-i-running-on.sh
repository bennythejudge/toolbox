#!/usr/bin/env bash

echo "$(date) - $(basename $0) - starting"
echo "Hostname: $(hostname)"
uname -a

sw_vers=$(which sw_vers > /dev/null 2>&1)
rc=$?
if [[ $rc == 0 ]]; then
	echo "Running on MacOs"
	sw_vers
	system_profiler SPSoftwareDataType
	exit 0
fi


if [[ -e /proc/version ]]; then
        echo "Content of /proc/version:"
        cat /proc/version
else
        echo "I cannot find /proc/version ?????"
fi


if [[ -e /etc/redhat-release ]]; then
        echo "RH distro - content of /etc/redhat-release"
        cat /etc/redhat-release
elif [[ -e /etc/debian_version ]]; then
        echo "Debian - content of /etc/debian_version"
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
fi


echo "$(date) - $(basename $0) - completed"
