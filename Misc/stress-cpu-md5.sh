#!/bin/sh

echo Generate a file of random stuff

dd if=/dev/urandom of=testfile count=20 bs=1024k

echo Load CPU

i=0

while [ 1 ]
do
   md5sum testfile
   i=`expr $i + 1`
   echo "Iteration: $i"
done