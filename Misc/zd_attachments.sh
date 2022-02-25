#!/bin/bash

#set -x
export subdomain=$2
export id=$1

if [[ "$zd_user" == "" || "$zd_password" == "" ]]; then
	echo "Set zd_user and zd_password in your environment"
	exit 1
fi
if [[ "$1" == "" || "$2" == "" ]]; then
	echo "Usage is: $(basename $0) <ticket id> <domain>"
	exit 1
fi

# get the list of file
echo "Executing curl"
curl -s -u ${zd_user}:${zd_password} \
  https://${subdomain}.zendesk.com/api/v2/tickets/${id}/comments.json | jq ".comments[].attachments[].url" > file.list.txt

r=$(wc -l file.list.txt| sed 's/ *//')

echo "${r} entries"

i=1
cat file.list.txt | while read u; do
	# clean_url=$(echo $u| sed 's/"//g')
	clean_url=$(echo $u| tr -d '"')
	echo "$i - $clean_url"
	name=ATT_${i}
	curl -u ${zd_user}:${zd_password} \
		-o ${name} $clean_url 2>/dev/null
	i=$((i+1))
	url=$(cat $name | jq '.attachment.content_url' | tr -d '"')
	file_name=$(cat $name | jq '.attachment.file_name' | tr -d '"')
	rm $name
	echo "url: $url"
	echo "file_name: $file_name"
	# when you curl the url there is a redirection - the location is, finally, the attachment
	nohup curl -s -L -o $file_name $url 2> /dev/null &
done
