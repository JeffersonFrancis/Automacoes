#!/bin/bash

ParameterName=(
arn:aws:rds:sa-east-1:070375095195:pg:default.sqlserver-ee-13.0
arn:aws:rds:sa-east-1:070375095195:pg:default.sqlserver-ee-14.0
arn:aws:rds:sa-east-1:070375095195:pg:default.sqlserver-ex-13.0
arn:aws:rds:sa-east-1:070375095195:pg:default.sqlserver-ex-14.0
arn:aws:rds:sa-east-1:070375095195:pg:default.sqlserver-ex-15.0
arn:aws:rds:sa-east-1:070375095195:pg:default.sqlserver-se-14.0
arn:aws:rds:sa-east-1:070375095195:pg:default.sqlserver-se-15.0
arn:aws:rds:sa-east-1:070375095195:pg:jd-jdpi-bacen-db-replica-pg
arn:aws:rds:sa-east-1:070375095195:pg:jd-spi-rec-db-replica-pg
arn:aws:rds:sa-east-1:070375095195:pg:mail-sqlserver-ee-14
arn:aws:rds:sa-east-1:070375095195:pg:teste-vino
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile bankingprod --region sa-east-1 --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"prd\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	
