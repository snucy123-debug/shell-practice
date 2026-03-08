#!/bin/bash

AMI_ID="ami-0220d79f3f480ecf5"
SG_ID="sg-0cb7bc58080de4d99" # replace with your SG ID
INSTANCES=("mongodb" "redis" "mysql" "rabbitmq" "catalogue" "user" "cart" "shipping" "payment" "dispatch" "frontend")
ZONE_ID="Z01604136BDJ5YNPI3XX" # replace with your ZONE ID
DOMAIN_NAME="vkdevin.online" # replace with your domain

for instance in ${INSTANCES[@]} # If we run this it will install all instance 
do
    INSTANCE_ID=$(aws ec2 run-instances --image-id ami-0220d79f3f480ecf5 --instance-type t3.micro --security-group-ids sg-0cb7bc58080de4d99 --tag-specifications "ResourceType=instance,Tags=[{Key=Name, Value=$instance}]" --query "Instances[0].InstanceId" --output text)
    if [ $instance != "frontend" ]
    then
        IP=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --query "Reservations[0].Instances[0].PrivateIpAddress" --output text)
        RECORD_NAME="$instance.$DOMAIN_NAME"
    else
        IP=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --query "Reservations[0].Instances[0].PublicIpAddress" --output text)
        RECORD_NAME="$DOMAIN_NAME"
    fi
    echo "$instance IP address: $IP"

    aws route53 change-resource-record-sets \
    --hosted-zone-id $ZONE_ID \
    --change-batch '
    {
        "Comment": "Creating or Updating a record set for cognito endpoint"
        ,"Changes": [{
        "Action"              : "UPSERT"
        ,"ResourceRecordSet"  : {
            "Name"              : "'$RECORD_NAME'"
            ,"Type"             : "A"
            ,"TTL"              : 1
            ,"ResourceRecords"  : [{
                "Value"         : "'$IP'"
            }]
        }
        }]
    }'
done

# #---------------------------------------------------------------------------------------------NOTES

# Internet
#    |
# frontend.daws84s.site
#    |
# ---------------------------
# |  user  | cart | payment |
# | redis  | mysql | mongo |
# ---------------------------

# ⭐ In simple words (what you must remember)

# Before running script:

# ✔ AWS CLI installed
# ✔ IAM permissions
# ✔ Correct AMI ID
# ✔ Correct Security Group
# ✔ Correct Hosted Zone ID
# ✔ Execute permission for script

# Just remember the 3 AWS CLI commands used:
# aws ec2 run-instances

# aws ec2 describe-instances

# aws route53 change-resource-record-sets