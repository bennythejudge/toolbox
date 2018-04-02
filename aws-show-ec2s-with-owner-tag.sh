#!/usr/bin/env bash


if [[ "$1" == "" ]]; then
	echo "Usage is: $(basename $0) <string>"
	exit 1
fi

echo "show EC2s with tag Owner=$1"
aws ec2 describe-instances --filters "Name=tag-value,Values=Owner,$1" --query 'Reservations[*].Instances[*].[InstanceId,Placement.AvailabilityZone,State.Name,PrivateIpAddress,PublicIpAddress]'
