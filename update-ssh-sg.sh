#!/bin/bash
# script to pull my current public IP address 
# and add a rule to my EC2 security group allowing me SSH access 
curl v4.ifconfig.co > ip.txt
awk '{ print $0 "/32" }' < ip.txt > ipnew.txt
export stuff=$(cat ipnew.txt)
aws ec2 authorize-security-group-ingress --group-name benedetto-ssh-from-home \
 --protocol tcp --port 22 --cidr $stuff


# 	#!/bin/bash
# # 
# # curl v4.ifconfig.co > ip.txt
# # awk '{ print $0 "/32" }' < ip.txt > ipnew.txt
# # export stuff=$(cat ipnew.txt)
# set -xe
# echo Updating SG $1 with incoming IP address 
# myip=$(curl v4.ifconfig.co 2>/dev/null)


# aws ec2 update-security-group-rule-descriptions-ingress \
# -group-id $1 \
# --ip-permissions '[{"IpProtocol": "tcp", "FromPort": 22, "ToPort": 22, "IpRanges": [{"CidrIp": ${myip}/32, "Description": "SSH access from where I am"}]}]'

# # aws ec2 authorize-security-group-ingress --group-id $1 \
# # --protocol tcp --port 22 --cidr ${myip}/32
# # 