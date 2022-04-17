#!/bin/bash

ParameterName=(
arn:aws:rds:sa-east-1:479550711906:pg:default.aurora-mysql5.7
arn:aws:rds:sa-east-1:479550711906:pg:default.aurora-postgresql11
arn:aws:rds:sa-east-1:479550711906:pg:default.mysql8.0
arn:aws:rds:sa-east-1:479550711906:pg:default.sqlserver-ee-11.0
arn:aws:rds:sa-east-1:479550711906:pg:default.sqlserver-ee-13.0
arn:aws:rds:sa-east-1:479550711906:pg:default.sqlserver-ee-14.0
arn:aws:rds:sa-east-1:479550711906:pg:default.sqlserver-ex-11.0
arn:aws:rds:sa-east-1:479550711906:pg:default.sqlserver-ex-13.0
arn:aws:rds:sa-east-1:479550711906:pg:default.sqlserver-ex-14.0
arn:aws:rds:sa-east-1:479550711906:pg:default.sqlserver-se-11.0
arn:aws:rds:sa-east-1:479550711906:pg:default.sqlserver-se-14.0
arn:aws:rds:sa-east-1:479550711906:pg:default.sqlserver-se-15.0
arn:aws:rds:sa-east-1:479550711906:pg:jd-spb-parameters-deadlock
arn:aws:rds:sa-east-1:479550711906:pg:mail-sqlserver-se-14
arn:aws:rds:sa-east-1:479550711906:pg:mssql-mail-test
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile bankingqa --region sa-east-1 --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"hom\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	
