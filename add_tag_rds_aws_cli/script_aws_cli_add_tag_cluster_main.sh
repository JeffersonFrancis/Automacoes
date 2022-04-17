#!/bin/bash

ParameterName=(
arn:aws:rds:us-east-1:210778840360:cluster-pg:default.aurora5.6
arn:aws:rds:us-east-1:210778840360:cluster-pg:default.aurora-mysql5.7
arn:aws:rds:us-east-1:210778840360:cluster-pg:picpay-aurora-cluster
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile main --region us-east-1 --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"prd\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	
