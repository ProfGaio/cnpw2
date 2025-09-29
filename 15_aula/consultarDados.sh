export ENDPOINT_URL=http://localhost:4566
aws dynamodb scan \
  --table-name Alunos \
  --endpoint-url $ENDPOINT_URL
