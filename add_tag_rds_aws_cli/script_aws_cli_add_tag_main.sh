#!/bin/bash

ParameterName=(
arn:aws:rds:us-east-1:210778840360:pg:cdc-debezium
arn:aws:rds:us-east-1:210778840360:pg:default.aurora-mysql5.7
arn:aws:rds:us-east-1:210778840360:pg:default.aurora5.6
arn:aws:rds:us-east-1:210778840360:pg:default.mysql5.5
arn:aws:rds:us-east-1:210778840360:pg:default.mysql5.6
arn:aws:rds:us-east-1:210778840360:pg:default.mysql5.7
arn:aws:rds:us-east-1:210778840360:pg:default.postgres11
arn:aws:rds:us-east-1:210778840360:pg:default.sqlserver-ex-15.0
arn:aws:rds:us-east-1:210778840360:pg:default.sqlserver-se-13.0
arn:aws:rds:us-east-1:210778840360:pg:default.sqlserver-web-13.0
arn:aws:rds:us-east-1:210778840360:pg:default.sqlserver-web-14.0
arn:aws:rds:us-east-1:210778840360:pg:payment-gateway-57
arn:aws:rds:us-east-1:210778840360:pg:payment-gateway-cdc
arn:aws:rds:us-east-1:210778840360:pg:picpay-master-mysql57
arn:aws:rds:us-east-1:210778840360:pg:picpay-qa-metabase
arn:aws:rds:us-east-1:210778840360:pg:picpay-replica-mysql57
arn:aws:rds:us-east-1:210778840360:pg:prod-mysql57
arn:aws:rds:us-east-1:210778840360:pg:prod-mysql57-1-cdc
arn:aws:rds:us-east-1:210778840360:pg:prod-mysql57-replica
arn:aws:rds:us-east-1:210778840360:pg:prod-picpaydb-57-10-8
arn:aws:rds:us-east-1:210778840360:pg:prod-picpaydb10-57
arn:aws:rds:us-east-1:210778840360:pg:prod-picpaydb10-57-1
arn:aws:rds:us-east-1:210778840360:pg:prod-picpaydb10-57-2
arn:aws:rds:us-east-1:210778840360:pg:prod-picpaydb10-57-3
arn:aws:rds:us-east-1:210778840360:pg:prod-picpaydb10-57-4
arn:aws:rds:us-east-1:210778840360:pg:prod-picpaydb10-57-5
arn:aws:rds:us-east-1:210778840360:pg:prod-picpaydb10-57-9
arn:aws:rds:us-east-1:210778840360:pg:prod-picpaydb10-57-cdc
arn:aws:rds:us-east-1:210778840360:pg:qa-aurora
arn:aws:rds:us-east-1:210778840360:pg:qa-legado-57
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile main --region us-east-1 --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"prd\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	
