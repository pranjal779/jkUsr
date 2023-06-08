#!/bin/bash

#####################
# Author: Pranjal
# Date: 8thJune2023
#
# Version: v01
#
# This script will report will report the AWS resource usage
#####################


# set +x
set -x


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls > resourceTracker.txt

# list EC2 instances
# command reference:
# https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-instances.html
echo "Print list of ec2 Instances"
# returning the json InstanceId:
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker.txt:q!
# aws ec2 describe-instances
# this one returns a huge list of information regarding my EC2 details the jq one sends a custom one


# list AWS Lambda functions
# command reference:
# https://docs.aws.amazon.com/cli/latest/reference/lambda/list-functions.html
echo "Print list of Lambda functions"
aws lambda list-functions

# list AWS IAM Users
# command reference:
# https://docs.aws.amazon.com/cli/latest/reference/iam/list-users.html
echo "Print list of IAM Users"
aws iam list-users
