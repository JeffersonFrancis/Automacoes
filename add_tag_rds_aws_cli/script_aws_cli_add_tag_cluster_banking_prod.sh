#!/bin/bash

ParameterName=(
arn:aws:rds:us-east-1:070375095195:cluster-pg:default.aurora-mysql5.7
arn:aws:rds:us-east-1:070375095195:cluster-pg:spb-microservices-infra-auroraclustermysqlparame-1fjblbfrjv6cx
arn:aws:rds:us-east-1:070375095195:cluster-pg:spb-microservices-infra-auroraclustermysqlparame-9zu5oksbmak7
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile bankingprod --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"prd\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	
