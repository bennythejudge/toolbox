#!/usr/bin/env bash
# move every 10 files in a different directory
# the first execution destroyed a number of photos now lost for ever you IDIOT!

mkdir 0
d=0
find ./ -type f  |  while read f; do  
	echo $f
	i=$((i+1))
	if [[ $i -lt 11 ]]; then
		echo $f
		echo $i
		mv -i $f $d
	else
		i=0
		echo $f
		echo $i
		d=$((d+1))
		echo "directory $d"
		mkdir $d
		mv -i $f $d
	fi
done
