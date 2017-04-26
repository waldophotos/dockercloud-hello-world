# deploy.sh
#! /bin/bash

TAG=$1

JWT=$2

curl -i -H "Authorization: token=${JWT}" -H 'Content-Type: application/json' -d "$(sed 's/<TAG>/${TAG}/' marathon.json)" https://ops.dcostest.waldo.photos/service/marathon/v2/apps

