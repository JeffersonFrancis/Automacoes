## Script para adicionar TAG nos RDS AWS

### Como utilizar:

1. Efetuar login utilizando o aws-google-auth.
2. Abrir o script.sh
3. Preencher o campo ParameterName com o ARN do RDS que deseja adicionar as TAG's.
4. Preencher o campo --profile com a role da conta no qual está o RDS.
5. Executar o comando abaixo para adicionar as devidas permissões de execução no arquivo .sh:

```  chmod +x arquivo.sh ```

6. Executar o script com o comando abaixo:

``` ./script.sh ```