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

## Escrevendo no arquivo

``
writeln( arquivo , 'valor1' , 'valor2' , 'valorN' );
``
O comando write também é válido


## Lendo no arquivo

``
readln( arquivo , variavel1 , variavel2 , variavelN );
``
O comando read também é válido.

## Fecha o arquivo

CloseFile( arquivo );

## Outras funções

1. EOF( arquivo ) : true se chegou ao final do arquivo.
2. Rename( arquivo , 'NovoNome' ) : renomeia o arquivo.
3. Erase( arquivo ) : apaga o arquivo.
4. FileSize( arquivo ) : retorna o tamanho em bytes.

