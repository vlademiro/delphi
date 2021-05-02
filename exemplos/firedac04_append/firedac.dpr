program firedac;

{
  Esse programa :

  1. cria uma conexão SEM USAR o FDManager
  2. testa se a conexão está correta.
  3. inserir uma linha na tabela employee

}

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.ConsoleUI.Wait, FireDac.Dapt ,FireDac.Stan.Param,
  Data.DB,
  Classes;   // Classes para o TStringList
var
  conexao: TFDConnection;
  qry: TFDQuery;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }


      conexao := TFDConnection.Create(nil);

      conexao.Params.Clear;
      conexao.Params.Add(Format('DriverID=%s',['FB']));
      conexao.Params.Add(Format('Database=%s',['C:\projetos\console\banco\EMPLOYEE.FDB']));
      conexao.Params.Add(Format('User_Name=%s',['SYSDBA']));
      conexao.Params.Add(Format('Password=%s',['masterkey']));
      conexao.Params.Add(Format('Protocol=%s',['TCPIP']));
      conexao.Params.Add(Format('Server=%s',['localhost']));
      conexao.ConnectionName :='Pooled';
      conexao.Connected := true;

      if conexao.Connected then
        begin
          writeln('Connection succeeded.');
        end
      else
        begin
            writeln('Connection Failed.');
        end;

      qry := TFDQuery.Create(conexao);
      try
          qry.Connection := conexao;
          qry.SQL.Text := 'select COUNTRY, CURRENCY from COUNTRY';
          qry.Open;
          qry.Append; // Seleciona o modo de inserção
          qry.FieldByName('COUNTRY').AsString := 'Brasil';
          qry.FieldByName('CURRENCY').AsString := 'Real';
          qry.Post; // Equivale ao commit
          qry.Close;

          writeln('Insert OK');

      finally
          qry.Free;
      end;


  except

    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  readln;
end.
