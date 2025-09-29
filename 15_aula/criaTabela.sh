export ENDPOINT_URL=http://localhost:4566

aws dynamodb create-table \
  --table-name Alunos \
  --attribute-definitions AttributeName=RA,AttributeType=S \
  --key-schema AttributeName=RA,KeyType=HASH \
  --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 \
  --endpoint-url $ENDPOINT_URL
