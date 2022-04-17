#!/bin/bash

ParameterName=(
arn:aws:rds:sa-east-1:479550711906:cluster-pg:default.aurora-mysql5.7
arn:aws:rds:sa-east-1:479550711906:cluster-pg:default.aurora-postgresql11
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile bankingqa --region sa-east-1 --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"hom\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	
