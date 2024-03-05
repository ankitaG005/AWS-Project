#!/bin/bash

# AWS CLI command to create an S3 bucket with region specification
aws s3api create-bucket --bucket itembucket001 --region us-east-1
aws s3 cp add.html s3://itembucket001/D:\Dolly


