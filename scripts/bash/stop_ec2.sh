#!/bin/bash

INSTANCE_ID=$(cat ../../output/ec2-details.txt)

aws ec2 stop-instances --instance-ids $INSTANCE_ID

echo "EC2 stopped" >> ../../logs/automation.log

