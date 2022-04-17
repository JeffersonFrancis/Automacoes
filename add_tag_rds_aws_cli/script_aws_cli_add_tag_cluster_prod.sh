#!/bin/bash

ParameterName=(
arn:aws:rds:us-east-1:306435756286:cluster-pg:default.aurora-mysql5.7
arn:aws:rds:us-east-1:306435756286:cluster-pg:default.aurora-postgresql10
arn:aws:rds:us-east-1:306435756286:cluster-pg:default.aurora-postgresql11
arn:aws:rds:us-east-1:306435756286:cluster-pg:default.aurora-postgresql12
arn:aws:rds:us-east-1:306435756286:cluster-pg:default.aurora-postgresql9.6
arn:aws:rds:us-east-1:306435756286:cluster-pg:picpay-cluster-aurora-mysql57
arn:aws:rds:us-east-1:306435756286:cluster-pg:picpay-prod-bankingwallet
arn:aws:rds:us-east-1:306435756286:cluster-pg:picpay-prod-biz
arn:aws:rds:us-east-1:306435756286:cluster-pg:picpay-prod-bizdigitalaccount
arn:aws:rds:us-east-1:306435756286:cluster-pg:picpay-prod-enem-api-57
arn:aws:rds:us-east-1:306435756286:cluster-pg:picpay-prod-keycloak-db
arn:aws:rds:us-east-1:306435756286:cluster-pg:picpay-prod-kong-db
arn:aws:rds:us-east-1:306435756286:cluster-pg:picpay-prod-ruler-notification
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile msprod --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"prd\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	
