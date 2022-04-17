#!/bin/bash

ParameterName=(
arn rds
)

	for x in "${ParameterName[@]}"
do
	aws rds add-tags-to-resource --profile addprofile --region sa-east-1 --resource-name "$x" --tags "[{ \"Key\": \"bu\",\"Value\": \"text\"},{\"Key\": \"cost_optimized\",\"Value\": \"text\"},{\"Key\": \"environment\",\"Value\": \"text\"},{\"Key\": \"shared\",\"Value\": \"text\"},{\"Key\": \"squad\",\"Value\": \"text\"},{\"Key\": \"tribe\",\"Value\": \"text\"},{\"Key\": \"terraform\",\"Value\": \"text\"}]"
		echo "$x Executado com sucesso"

done	
