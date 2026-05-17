#!/bin/bash

INSTANCE_ID=$(cat ../../output/ec2-details.txt)

STATUS=$(aws ec2 describe-instances \
--instance-ids $INSTANCE_ID \
--query 'Reservations[*].Instances[*].State.Name' \
--output text)

echo "EC2 Status: $STATUS"

echo "EC2 Status Checked: $STATUS" >> ../../logs/automation.log
