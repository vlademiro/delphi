# TStringList

## Declarando
``
conteudo:TStringList;
``

## Inicializando com dados de um arquivo

``
conteudo := TStringList.Create;
conteudo.LoadFromFile(ExtractFilePath( Application.ExeName ) + 'config.dat');
``

## Percorrendo
``
for x := 0 to conteudo.count-1 do
    begin
      if x = 1 then { se for o segundo elemento, então é a senha }
        writeln( arquivo , Trim(edtSenha01.Text) )
      else
        writeln(arquivo,conteudo[x]);
    end;
``
