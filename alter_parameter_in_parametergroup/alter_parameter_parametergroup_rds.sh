#!/bin/bash

ParameterName=(
addnameparametergroup
)

for x in "${ParameterName[@]}"
do

aws rds modify-db-parameter-group --db-parameter-group-name "$x" --profile addprofile --region=us-east-1 --parameters "ParameterName='innodb_log_file_size', ParameterValue=2147483648, ApplyMethod=immediate" 
aws rds modify-db-parameter-group --db-parameter-group-name "$x" --profile addprofile --region=us-east-1 --parameters "ParameterName='innodb_online_alter_log_max_size', ParameterValue=1073741824, ApplyMethod=immediate"

done
