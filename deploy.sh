# deploy.sh
#! /bin/bash

TAG=$1

JWT=$2

sed -e "s/<TAG>/$TAG/" marathon.json

curl -H "Authorization: token=${JWT}" -H 'Content-Type: application/json' -X PUT -d @marathon.json https://ops.dcostest.waldo.photos/service/marathon/v2/apps




