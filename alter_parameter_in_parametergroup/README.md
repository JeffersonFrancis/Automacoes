## Script para alterar um valor de um parametro do Parametergroup

### Como utilizar:

1. Efetuar login utilizando o aws-google-auth.
2. Abrir o script.sh
3. Preencher o campo ParameterName com o nome do parameter group. Para obter o nome dos parametergroup, utilizar a sintaxe abaixo: 

``` aws rds --profile addprofile --region sa-east-1 describe-db-instances | grep DBParameterGroupName ```

4. Preencher o campo --profile com a role da conta no qual está o RDS.
5. Adicionar os parametros que serão alterados. (Ex: binlog_format=row)
5. Executar o comando abaixo para adicionar as devidas permissões de execução no arquivo .sh:

```  chmod +x arquivo.sh ```

6. Executar o script com o comando abaixo:

``` ./script.sh ```
