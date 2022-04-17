#!/bin/bash

ParameterName=(
arn:aws:rds:us-east-1:462495227997:cluster-pg:default.aurora-mysql5.7
arn:aws:rds:us-east-1:462495227997:cluster-pg:default.aurora-postgresql10
arn:aws:rds:us-east-1:462495227997:cluster-pg:default.aurora-postgresql11
arn:aws:rds:us-east-1:462495227997:cluster-pg:default.aurora-postgresql12
arn:aws:rds:us-east-1:462495227997:cluster-pg:default.aurora-postgresql9.6
arn:aws:rds:us-east-1:462495227997:cluster-pg:default.aurora5.6
arn:aws:rds:us-east-1:462495227997:cluster-pg:picpay-cluster-aurora-mysql57
arn:aws:rds:us-east-1:462495227997:cluster-pg:picpay-qa-bankingwallet
arn:aws:rds:us-east-1:462495227997:cluster-pg:picpay-qa-bizdigitalaccount
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile msqa --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"hom\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	
