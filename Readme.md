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


### Aula 6
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