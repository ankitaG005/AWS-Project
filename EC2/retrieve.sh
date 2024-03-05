#!/bin/bash

# AWS CLI command to describe EC2 instances
aws ec2 describe-instances \
	--query 'Reservations[].Instances[].[InstanceId, PublicIpAddress, State.Name]' \
        --filters "Name=instance-state-name,Values=['running','stopped','pending']" \
        --output table



