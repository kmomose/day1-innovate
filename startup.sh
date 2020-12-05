#!/bin/bash
METADATA=$(curl ${ECS_CONTAINER_METADATA_URI}/task)
python3 -c "import json; meta=json.loads('$METADATA'); task_id=meta['TaskARN'].split('/')[-1]; print(task_id)" > ./task_id
TASK_ID=$(cat ./task_id)
echo $TASK_ID >> /var/www/html/index.html
/usr/sbin/httpd -D FOREGROUND
~                                               
