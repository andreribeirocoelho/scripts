Cluster Tail
--------------------
Executa um comando tail num mesmo path em diversos hosts remotos simultaneamente.
O logging impresso é colorido para facilitar a identificação dos hosts e o titulo da janela é configurado
de acordo com o arquivo que esta sendo visualizado


Instalação
------------------------------
Basta copiar os arquivos clustertail e color_log.awk para qualquer diretório que faça parte do unix PATH


Uso
------------------------------
```
clustertail path host1 host2 hostN
```

   * path       diretório completo no servidor remoto com o arquivo que deseja monitorar
   * hostN      Nome do host que será monitorado. É necessário configurar o acesso via ssh sem senha.


Para encerrar o script basta pressionar ctrl+c



Compatibilidade
------------------------------
Testado apenas no MacOSX 10.6


Dicas
------------------------------
Configure alias para os logs/servidores que mais costuma utilizar, por exemplo:

```
alias ctapache='clustertail /var/log/apache2/access_log servidor1.meudominio.com servidor2.meudominio.com'
```

Assim basta chamar: `ctapache` na linha de comando para utilizar o script
