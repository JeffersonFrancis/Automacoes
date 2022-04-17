#!/bin/bash

ParameterName=(
arn:aws:rds:us-east-1:070375095195:pg:baas-slc
arn:aws:rds:us-east-1:070375095195:pg:default.aurora-mysql5.7
arn:aws:rds:us-east-1:070375095195:pg:default.mysql8.0
arn:aws:rds:us-east-1:070375095195:pg:spb-microservices-infra-databaseauthorizationserver-fmkdvv5r2sqx-auroraclustermysqlinstancesparametergroup-j719kt5feo0p
arn:aws:rds:us-east-1:070375095195:pg:spb-microservices-infra-databasewiretransfer-1vwn3pccl5ugf-auroraclustermysqlinstancesparametergroup-v3ihpih636gb
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile bankingprod --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"prd\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	