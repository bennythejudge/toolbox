#!/usr/bin/env bash
# List all EC2s in all regions for a given profile
# $1 = profile name
# brutally produce json, just beautify it a bit with jq
# requires jq and aws cli and aws credentials

which jq > /dev/null 2>&1
rc=$?
if [[ $rc -ne 0 ]]; then
	echo "Cannot find jq"
	exit 1
fi

which aws > /dev/null 2>&1
rc=$?
if [[ $rc -ne 0 ]]; then
	echo "Cannot find aws cli"
	exit 1
fi

if [[ "$1" == "" ]]; then
	echo "Please provide a profile name"
	exit 1
fi


aws ec2 describe-regions | jq '.Regions[].RegionName' | sed 's/"//g' | while read r ; do
	echo $r
	aws ec2 describe-instances --profile $1 --region $r | jq "."
done
