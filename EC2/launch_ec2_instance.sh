#!/bin/bash

# Define variables
IMAGE_ID="ami-038ef8cd1e6bbc0a9"
INSTANCE_TYPE="t2.micro"
KEY_NAME="Ankita01"
SECURITY_GROUP_IDS="sg-0065264d1c3da906c"
SUBNET_ID="subnet-09ccb257ba8a1226e" # Specify your subnet ID

# AWS CLI command to launch an EC2 instance
aws ec2 run-instances \
  --image-id $IMAGE_ID \
  --count 1 \
  --instance-type $INSTANCE_TYPE \
  --key-name $KEY_NAME \
  --security-group-ids $SECURITY_GROUP_IDS \
  --subnet-id $SUBNET_ID \
  --tag-specifications 'ResourceType=instance,Tags=[{Key=ANKITA,Value=DEVOPS}]'


