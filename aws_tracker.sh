#!/bin/bash
###############################
## Author : Shankesh
## Date : 24-01-2025
##
## Version : V1
## This Script runs the usage of AWS Resources
###########################################################

set -x


#AWS s3
#AWS EC2
#AWS Lambda
#AWS IAMRoles

#To List all S3 Buckets
echo "List all the buckets"
aws s3 ls >> resource_tracker

#To List all the instances
echo "List all the instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resource_tracker

#To List all the Lambda
echo "List the lambda functions"
aws lambda list-functions | jq '.Functions[].FunctionName' >> resource_tracker


#To List all the IAMRoles
echo "List all the IAM Roles"
aws iam list-roles | jq '.Roles[].RoleName' >> resource_tracker
