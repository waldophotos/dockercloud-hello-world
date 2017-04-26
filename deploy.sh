# deploy.sh
#! /bin/bash

TAG=$1

JWT=$2

APP_NAME=$3

sed -e "s/<TAG>/${TAG}/" -e "s/<APP_NAME>/${APP_NAME}/" marathon.json.template > marathon.json

cat marathon.json

#echo curl -i -H "Authorization: token=${JWT}" -H 'Content-Type: application/json' -d @marathon.json -X PUT "https://ops.dcostest.waldo.photos/service/marathon/v2/apps/hello-world?force=true"

curl -i -H "Authorization: token=${JWT}" -H 'Content-Type: application/json' -d @marathon.json -X PUT "https://ops.dcostest.waldo.photos/service/marathon/v2/apps/${APP_NAME}?force=true"

