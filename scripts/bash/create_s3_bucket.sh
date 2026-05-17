#!/bin/bash

source ../../config/config.env

LOG_FILE="../../logs/automation.log"
ERROR_FILE="../../logs/error.log"

echo "Creating S3 Bucket..." >> $LOG_FILE

aws s3 mb s3://$BUCKET_NAME --region $AWS_REGION 2>> $ERROR_FILE

if [ $? -eq 0 ]; then
    echo "S3 Bucket Created Successfully" >> $LOG_FILE
    echo $BUCKET_NAME > ../../output/s3-details.txt
else
    echo "S3 Bucket Creation Failed" >> $ERROR_FILE
fi
