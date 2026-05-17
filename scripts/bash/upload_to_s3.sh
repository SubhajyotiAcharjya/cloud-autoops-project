#!/bin/bash

source ../../config/config.env

aws s3 cp ../../backups/sample-backup.tar.gz s3://$BUCKET_NAME/

if [ $? -eq 0 ]; then
    echo "Backup uploaded successfully" >> ../../logs/automation.log
else
    echo "Upload failed" >> ../../logs/error.log
fi
