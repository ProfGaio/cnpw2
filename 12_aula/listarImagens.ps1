# Script PowerShell para listar as imagens no bucket S3 com LocalStack


$Endpoint = "http://localhost:4566"
$Bucket = Read-Host -Prompt "Insira o nome do bucket:"
<# $pasta = Read-Host -Prompt "Insira o nome da pasta:" #>


# Lista as imagens copiadas para o bucket
aws s3 ls --recursive "s3://$Bucket/" --endpoint-url $Endpoint --profile "localstack"