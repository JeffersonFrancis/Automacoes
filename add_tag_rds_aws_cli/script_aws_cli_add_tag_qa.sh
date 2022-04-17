#!/bin/bash

ParameterName=(
arn:aws:rds:us-east-1:462495227997:pg:cdc-aurora-teste
arn:aws:rds:us-east-1:462495227997:pg:dbpm-dev-pg
arn:aws:rds:us-east-1:462495227997:pg:default.aurora-mysql5.7
arn:aws:rds:us-east-1:462495227997:pg:default.aurora-postgresql10
arn:aws:rds:us-east-1:462495227997:pg:default.aurora-postgresql11
arn:aws:rds:us-east-1:462495227997:pg:default.aurora-postgresql12
arn:aws:rds:us-east-1:462495227997:pg:default.aurora-postgresql9.6
arn:aws:rds:us-east-1:462495227997:pg:default.aurora5.6
arn:aws:rds:us-east-1:462495227997:pg:default.mysql5.5
arn:aws:rds:us-east-1:462495227997:pg:default.mysql5.6
arn:aws:rds:us-east-1:462495227997:pg:default.mysql5.7
arn:aws:rds:us-east-1:462495227997:pg:default.mysql8.0
arn:aws:rds:us-east-1:462495227997:pg:default.postgres11
arn:aws:rds:us-east-1:462495227997:pg:default.postgres12
arn:aws:rds:us-east-1:462495227997:pg:default.postgres13
arn:aws:rds:us-east-1:462495227997:pg:default.postgres9.6
arn:aws:rds:us-east-1:462495227997:pg:default.sqlserver-ex-15.0
arn:aws:rds:us-east-1:462495227997:pg:defaultaurora-postgresql96
arn:aws:rds:us-east-1:462495227997:pg:kong-platform-hd
arn:aws:rds:us-east-1:462495227997:pg:patition-teste
arn:aws:rds:us-east-1:462495227997:pg:picpay-aurora-mysql57
arn:aws:rds:us-east-1:462495227997:pg:picpay-master-mysql57
arn:aws:rds:us-east-1:462495227997:pg:picpay-master-mysql80
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-bankingwallet
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-biz
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-bizdigitalaccount
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-clitest
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-fm-groups-db
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-keycloak-db
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-keycloak-db-12
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-kong-db
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-kong-db-12
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-kong-ob-bff-payments
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-kong-pj-cloudflare
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-misterbelly
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-mobility
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-ops-kong-cf
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-raza
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-raza-12
arn:aws:rds:us-east-1:462495227997:pg:picpay-qa-ruler-notification
arn:aws:rds:us-east-1:462495227997:pg:picpay-replica-mysql57
arn:aws:rds:us-east-1:462495227997:pg:picpay-replica-mysql80
arn:aws:rds:us-east-1:462495227997:pg:sentinela-cdc
arn:aws:rds:us-east-1:462495227997:pg:sentinela-cdc-qa-1
arn:aws:rds:us-east-1:462495227997:pg:sentinela-debezium
arn:aws:rds:us-east-1:462495227997:pg:test-online-ddl-pg
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile msqa --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"picpay\"},{\"Key\": \"cost_optimized\",\"Value\": \"false\"},{\"Key\": \"environment\",\"Value\": \"hom\"},{\"Key\": \"shared\",\"Value\": \"false\"},{\"Key\": \"squad\",\"Value\": \"database\"},{\"Key\": \"tribe\",\"Value\": \"cloudops\"},{\"Key\": \"terraform\",\"Value\": \"false\"}]"
		echo "$x Executado com sucesso"

done	
