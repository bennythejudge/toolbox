#!/usr/bin/env bash
# get an instance public ip address by tag
# we need 2 arguments:
# tag name
# tag value
# the assumption is that the tag must be unique

if [[ $# -lt 2 ]]; then
	echo "Usage is: $(basename $0) <tag name> <tag value>"
	exit 1
fi

#echo "show EC2s with tag $1 = $2"
aws ec2 describe-instances --filters "Name=tag-value,Values=$1,$2" --query 'Reservations[*].Instances[*].[PublicIpAddress]' --output text
