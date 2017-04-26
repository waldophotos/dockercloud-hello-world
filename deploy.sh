# deploy.sh
#! /bin/bash

TAG=$1

JWT=$2

APP_ID=$3

curl -i -H "Authorization: token=${JWT}" -H 'Content-Type: application/json' -d "$(sed 's/<TAG>/$TAG/' marathon.json)" -X PUT https://ops.dcostest.waldo.photos/service/marathon/v2/apps/$APP_ID?force=true

