# Arquivos associados a variáveis

## Declarando

````
arquivo:TextFile;
````

## Associando a variável ao arquivo

````
assignfile( arquivo, ExtractFilePath( Application.ExeName ) + 'config.dat' );
````

## Abrindo em modo append

O modo append abre o arquivo para gravação, mas você só vai poder acrescentar dados ao final dele.

````
append(arquivo);
````

## Abrindo o arquivo para leitura 

Se não existir dá erro
````
reset(arquivo);
````
Caso o arquivo esteja aberto ele fecha e abre posicionando o ponteiro no início do arquivo.

## Abrindo o arquivo para leitura/gravação

Se não existir ele cria o arquivo.
Se existir ele exclui o conteúdo.
````
rewrite(arquivo)
````


