# Computação em Nuvem para Web 2
## Conteúdos das aulas

### Aula 4
A primeira atividade registrada no repositório:
* Pesquisa sobre fornecedores de Nuvem Pública e principais serviços como:
    - Cloud Storage;
    - Banco de Dados;
    - Servidor de App/Deploy;
    - Cloud Network;
    - Cloud Security;
    - VM e Container.

### Aula 5


### Aula 6 e 7
Pesquisa sobre a AWS e serviço de computação EC2. Definição de instâncias. Atividade de pesquisa.

#### Lembrança dos comandos git a serem executados após criar o repositório no GitHub
* Copiar a URL https do repositório;
* Utilizando o shell Git Bash ou Power Shell, executar o comando:
    ```
    git clone <url_do_repositório>
    ```
* Será criada uma pasta com o mesmo nome do repositório. Acesse essa pasta com o comando:
    ```
    cd <nome_da_pasta>
    ```
* Se preferir gerenciar os arquivos pelo VS Code, você pode executá-lo abrindo a pasta do repositório (que você já está acessando), digitando:
    ```
    code .  (equivalente a "code here" ou "abrir VSCode aqui")
    ```
* Agora, você pode adicionar os arquivos da aula. Sugiro que você crie o arquivo Readme.md como este, documentando os assuntos das aulas.
* Além disso, crie uma pasta para cada aula (você pode fazer isso pelo Explorer do VSCode).
* Sempre que terminar seus trabalhos da aula, execute os comandos git para adicionar os arquivos no stage e, depois, fazer o commit. Como perdemos o repositório toda semana, temos que configurar o usuário e e-mail do GitHub toda semana:
    ```
    git config user.name "Seu nome"
    git config user.email "email cadastrado no GitHub"
    ```  
    - Depois:
    ```
    git add .
    ```
    - Seguido pelo commit:
    ```
    git commit -m "Mensagem de registro como o nome da aula ou atividade"
    ```
* Finalmente, suba para a nuvem (GitHub) as alterações:
    ```
    git push origin main
    ```

### Aula 8

Criando uma instância EC2 com AWS CLI e LocalStack. A LocalStack é um emulador de nuvem AWS, que permite provisionar e gerenciar serviços da AWS na máquina local como se estivesse utilizando realmente a AWS. Nesta aula iremos aprender como utilizar o serviço EC2, criando uma instância.

#### VISÃO GERAL E OBJETIVO
Aprender a criar e gerenciar uma instância EC2 localmente utilizando a AWS Command Line Interface (CLI) e o LocalStack no sistema operacional Windows 10.

#### PRÉ-REQUISITOS
* Docker em Execução no SO: É necessário executar o Docker Desktop.
* LocalStack Instalado e Rodando: É necessário adicionar a sua pasta no PATH do SO. Certifique-se de que o LocalStack esteja iniciado antes de prosseguir digitando o comando: localstack start PowerShell.
* AWS CLI Instalada: Verifique a instalação abrindo executando no PowerShell: aws --version.
* AWS CLI Configurada para LocalStack: Escolha um método para configurar a AWS CLI para se comunicar com o LocalStack (primeiro passo da atividade abaixo).

#### ATIVIDADE

#### Configurando um Perfil Específico
Edite o arquivo C:\Users\\<SeuNomeDeUsuário>\.aws\config e adicione:
```
[profile localstack]
region = us-east-1
output = json
endpoint_url = http://localhost:4566
```

Edite o arquivo C:\Users\\<SeuNomeDeUsuário>\.aws\credentials e adicione: 
``` 
[localstack]
aws_access_key_id = etec
aws_secret_access_key = etec 
```
Para usar este perfil, adicione --profile localstack aos comandos da AWS CLI.

#### Interagindo com o Serviço EC2 no LocalStack
Verificar o Serviço EC2: Executando no PowerShell:
```
aws ec2 describe-regions --profile localstack
```
Deverá aparecer uma listagem de arquivo no formato JSON.

#### Criar a Instância EC2
Execute o comando (ajuste conforme sua configuração): 
```
aws --profile localstack ec2 run-instances `
	--image-id ami-00000000000000000 `
	--instance-type t2.micro --count 1
```
Analise a saída JSON e anote o InstanceId da instância criada.


#### Listar as Instâncias EC2 em Execução

Execute o comando:
```
aws ec2 describe-instances --profile localstack
```
Verifique a saída para encontrar sua instância pelo InstanceId e confirme que o State é running.

Outras operações estão no arquivo pdf na pasta da aula.

### Aula 9

### Aula 10 e 11
1) Criar scritps de PowerShell para automatizar a execução da LocalStack e criar um bucket com imagens de imóveis para locação ou venda.
2) Enviar (copiar) imagens de imóveis organizadas em pastas para o bucket.
3) Criar uma página web com um portifólio de imagens de imóveis com referência às imagens gravadas no bucket.
4) Faltou terminar... Ainda utilizaremos a aula 12. Lembrar de comentar sobre segurança de acesso ao bucket.



