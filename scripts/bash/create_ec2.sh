#!/bin/bash

source ../../config/config.env

INSTANCE_ID=$(aws ec2 run-instances \
--image-id $AMI_ID \
--instance-type $INSTANCE_TYPE \
--count 1 \
--query 'Instances[0].InstanceId' \
--output text)

echo $INSTANCE_ID > ../../output/ec2-details.txt

echo "EC2 Created: $INSTANCE_ID" >> ../../logs/automation.log
