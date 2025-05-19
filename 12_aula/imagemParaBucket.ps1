# Script PowerShell para criar bucket S3 com LocalStack


$Endpoint = "http://localhost:4566"
$Bucket = Read-Host -Prompt "Insira o nome do bucket:"
$pasta = Read-Host -Prompt "Insira o nome da pasta:"


# 1. Criar um bucket
Write-Host "Copiando pasta de imagens para o bucket"
aws s3 cp --recursive $pasta "s3://$Bucket/$pasta/" --endpoint-url $Endpoint --profile "localstack"

# 2. Lista as imagens copiadas para o bucket
aws s3 ls "s3://$Bucket/$pasta/" --endpoint-url $Endpoint --profile "localstack"