#!/bin/bash
# send custom event to sysdig cloud
# 2018-01-11

SDC_ACCESS_TOKEN=$(cat ~/.my-secret-sdc-access-token.txt)
if [[ "$SDC_ACCESS_TOKEN" == "" ]]; then
	echo I cannot find your SDC access token
	exit 1
fi
ENDPOINT='app.sysdigcloud.com'

curl -i \
-X POST -s 'https://'"${ENDPOINT}"'/api/events' \
-H 'Content-Type: application/json; charset=UTF-8' \
-H 'Accept: application/json, text/javascript, */*; q=0.01' \
-H 'Authorization: Bearer '"${SDC_ACCESS_TOKEN}"'' \
--data-binary '{"event":{"name":"Container Killed","description":"test event","severity":"4","tags":{"my_own_tag":"42"}}}' \
--compressed
echo $?
sleep 5s
