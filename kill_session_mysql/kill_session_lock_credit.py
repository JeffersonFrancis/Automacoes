#!/usr/bin/env python
# coding: utf-8

# # Matar as sessões dos usuários necessários

# In[1]:


#declarando as bibliotecas


# In[2]:


import mysql.connector #conectar no banco de dados
import pymysql.cursors #executar a query


# In[3]:


#criando as variaveis de conexao
MYSQL_USER="user"
MYSQL_PASSWORD="password"
MYSQL_HOSTNAME="host"
MYSQL_DATABASE="database"
MYSQL_PORT=port


# In[4]:


#abrindo uma conexao com o banco de dados
connection=mysql.connector.connect(host=MYSQL_HOSTNAME,
                        user=MYSQL_USER,
                        password=MYSQL_PASSWORD)


# In[5]:


#salvando o script da consulta na variavel
SQL="select distinct(blocking_pid) from sys.x$innodb_lock_waits;"


# In[6]:


cursor=connection.cursor() #definicao do cursor para utilizar a conexao
cursor.execute(SQL) #executando a consulta
result=cursor.fetchall() #salvando o resultado da consulta na variavel result. fetchall pega todas as linhas do cursor


# In[7]:


for row in result:
  kill = '''call mysql.rds_kill'''+ str(row)[:-2] + ");" #cria o arquivo chamando a kill
  cursor=connection.cursor() #definicao do cursor para utilizar a conexao
  cursor.execute(kill) #executando o kill
  cursor.close()

