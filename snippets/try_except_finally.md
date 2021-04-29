# Tratamento de erros 

## Bloco try / except

Caso ocorra um erro a sequência é desviada para o bloco except. No bloco except o erro pode ser tratado.
````
try

  sequencia normal do código

except 
  on E : exception do
  begin
    messagedlg( E.message ,  mtError, [mbOk],0);
  end;

end;
````

## Bloco try / finally


````
try

  sequencia normal do código

finally 
   
  
end;
````
Caso ocorra um erro a sequência é desviada para o bloco finally. Contudo o erro não é tratado porque o objeto erro não é gerado.
Para que serve isso então ?
Para realizarmos operações que não devem deixar de serem realizadas, como por exemplo o fechamento de um arquivo.

## Combinação ideal

````
try
  try
  {Seu código aqui}
  except 
    on E : exception do
    begin
      messagedlg( E.message ,  mtError, [mbOk],0);
      // Outras linhas, se não tiver pode omitir o begin...end
    end;
  end;  
finally
  
end;
````

## Exemplo

````
{ Realizar a escrita do arquivo }
    assignfile( arquivo, ExtractFilePath( Application.ExeName ) + 'config.dat' );
    try
      try
        rewrite( arquivo );
        for x := 0 to conteudo.count-1 do
            writeln(arquivo,conteudo[x]);

      except
        on E : exception do
        begin
          messagedlg( E.Message , mtError, [mbOk],0);
        end;
      end;
    finally
      closefile( arquivo );
      conteudo.Free;
    end;
````    
