# Script PowerShell para limpar arquivos do bucket S3 com LocalStack


$Endpoint = "http://localhost:4566"
$Bucket = Read-Host -Prompt "Insira o nome do bucket:"
<# $pasta = Read-Host -Prompt "Insira o nome do bucket:" #>


# Excluir arquivosdo bucket
aws s3 rm --recursive "s3://$Bucket/" --endpoint-url $Endpoint --profile "localstack"