#!/bin/bash

ParameterName=(
arn:aws:rds:us-east-1:306435756286:db:emevents-prod
arn:aws:rds:us-east-1:306435756286:db:picpay-prod-credit-ro
arn:aws:rds:us-east-1:306435756286:db:picpay-prod-konga-instance-2
arn:aws:rds:us-east-1:306435756286:db:picpay-prod-moonlight-ro
arn:aws:rds:us-east-1:306435756286:db:picpay-prod-p2m-ro
arn:aws:rds:us-east-1:306435756286:db:picpay-prod-pix-transaction-replica-1
arn:aws:rds:us-east-1:306435756286:db:picpay-prod-promo-invoice-cashback-processor-instance-2
arn:aws:rds:us-east-1:306435756286:db:sentinela-cdc-mysql-instance-2
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile msprod --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"prd\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	
