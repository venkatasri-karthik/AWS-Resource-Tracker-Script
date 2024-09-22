#############
#Author : Karthik
#date : 22-09-2024
set -x #debugger

#listing the aws s3 buckets
echo "Listing the s3 buckets"
aws s3 ls

#listing the aws ec2 instances
echo "Listing the ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#Listing the lamda functions
echo "Listing the Lamda Functions"
aws lambda list-functions

#Listing the IAM users
echo "Listing the AWS IAM users"
aws iam list-users


