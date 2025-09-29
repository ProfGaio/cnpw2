export ENDPOINT_URL=http://localhost:4566

aws dynamodb put-item \
  --table-name Alunos \
  --item '{"RA": {"S": "12345"}, "Nome": {"S": "João Silva"}, "Curso": {"S": "Informática"}}' \
  --endpoint-url $ENDPOINT_URL

aws dynamodb put-item \
  --table-name Alunos \
  --item '{"RA": {"S": "54321"}, "Nome": {"S": "Maria Lima"}, "Curso": {"S": "Redes"}}' \
  --endpoint-url $ENDPOINT_URL
