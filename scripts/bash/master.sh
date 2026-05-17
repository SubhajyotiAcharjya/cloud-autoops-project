#!/bin/bash

source ../../config/config.env

echo "Starting Cloud Automation Workflow"

echo "Creating Backup..."
./backup.sh

echo "Uploading Backup to S3..."
./upload_to_s3.sh

echo "Listing S3 Bucket Contents..."
aws s3 ls s3://$BUCKET_NAME

echo "Creating EC2 Instance..."
./create_ec2.sh

echo "Waiting for EC2 to initialize..."
sleep 30

echo "Checking EC2 Status..."
./check_ec2_status.sh

echo "Stopping EC2 Instance..."
./stop_ec2.sh

echo "Waiting for EC2 to stop..."
sleep 20

echo "Checking Final EC2 Status..."
./check_ec2_status.sh

echo "Automation Completed"
