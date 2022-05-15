# Ansible - Criação e Configuração de RDS

Esta automação tem como objetivo realizar a criação de RDS MYSQL e POSTGRES

## Indice

[Requisitos](#Requisitos)

[Instalacao](#Instalação)

[Playbook](#Playbook)

[Obrigatorio](#Obrigatório)

[Exemplo](#Exemplo)

## Requisitos

* ansible >= 2.12.4
* jinja >= 2.11.3
* python >= 3.8.8
* AWS CLI >= 2.2.34
* psycopg2 >= 2.9.3

## Instalação

Utilize o comando abaixo para realizar a instalação do Ansible e seus componentes:

```
 # pwd - para checar onde voce está

pip3 install -r requirements.txt
```

Após a instalação, execute o comando abaixo para validar a versão instalada:

```
ansible --version
```

## Playbook

### Recursos criados

* 1 parameter group com os parametros abaixo configurados:

MySQL:
* max_allowed_packet: 1073741824
* innodb_log_file_size: 2147483648
* binlog_format: "ROW"
* sync_binlog: 1000
* innodb_flush_log_at_trx_commit: 2
* max_connect_errors: 99999
* innodb_online_alter_log_max_size: 1073741824

Postgres:

Está utilizando os parametros default

* Prod
    * 1 Instância primária
    * 1 Instância secundária
    * Criação e configuração dos usuários

* QA
    * 1 Instância primária
    * Criação e configuração dos usuários

## Obrigatório

Para a criação do RDS será necessário utilizar todos os parametros abaixo:

* AWS_PROFILE -> informar o profile de acordo com o arquivo "~/.aws/config"
* AWS_REGION -> informar a região quando utilizar uma região diferente do que está configurado no "~/.aws/config"
* host -> informar o nome da máquina (ex.: picpay-prod-microservico)
* dbname -> nome do banco de dados
* usr_app_name -> nome do usuário da aplicação
* usr_app_password -> senha do usuário da aplicação
* bu -> preencher com a BU (TAG)
* tribe -> preencher com a tribe (TAG)
* squad -> preencher com a squad (TAG)
* docs 0> preencher com o repo do git (TAG)
* tags -> utilizar uma das opções abaixo:
    * mysql-qa
    * mysql-prod
    * postgres-qa
    * postgres-prod

## Exemplo

```
AWS_PROFILE=msprod 
ansible-playbook -i inventory \
-e host=picpay-prod-ms \
-e dbname=teste \
-e usr_app_name=usr_servicename \
-e usr_app_password="password" \
-e bu=tech_cross \
-e tribe= teste \
-e squad= teste \
-e docs=teste \
--tags="postgres-prod" \ --vault-password-file .pwdfile \ playbook.yml
```



