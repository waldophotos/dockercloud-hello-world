# deploy.sh
#! /bin/bash

TAG=$1

JWT=$2

APP_ID=$3

sed "s/<TAG>/${TAG}/" marathon.json.template > marathon.json

cat marathon.json

echo curl -i -H "Authorization: token=${JWT}" -H 'Content-Type: application/json' -d @marathon.json -X PUT "https://ops.dcostest.waldo.photos/service/marathon/v2/apps/${APP_ID}?force=true"

curl -i -H "Authorization: token=${JWT}" -H 'Content-Type: application/json' -d @marathon.json -X PUT "https://ops.dcostest.waldo.photos/service/marathon/v2/apps/${APP_ID}?force=true"

