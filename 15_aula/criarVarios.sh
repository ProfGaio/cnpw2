export ENDPOINT_URL=http://localhost:4566

aws dynamodb batch-write-item \
  --request-items file://estudantes.json \
  --endpoint-url $ENDPOINT_URL
