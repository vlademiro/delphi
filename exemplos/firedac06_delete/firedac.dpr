program firedac;

{
  Esse programa :

  1. cria uma conexão SEM USAR o FDManager
  2. testa se a conexão está correta.
  3. Inserir um valor
  4. Buscar um valor
  5. excluir o valor encontrado

}

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,FireDAC.Comp.Client,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.ConsoleUI.Wait, FireDac.Dapt ,FireDac.Stan.Param,
  Data.DB, TypInfo,
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
          writeln(Format('Estado: %s', [GetEnumName(TypeInfo(TDataSetState),Ord(qry.State))]));
          writeln('Vou inserir um registro para ser deletado posteriormente');
          qry.Append; // Seleciona o registro para edição
          writeln(Format('Estado: %s', [GetEnumName(TypeInfo(TDataSetState),Ord(qry.State))]));
          qry.FieldByName('COUNTRY').AsString := 'Brasil Antigo';
          qry.FieldByName('Currency').AsString := 'Cruzeiro';
          qry.Post;
          writeln('*** ATENCAO ***');
          writeln('Se quiser ver no Flamerobin ou no seu cliente preferido faça agora.');
          writeln('Tecle ENTER para que eu prossiga');readln;
          writeln(Format('Estado após o Post: %s', [GetEnumName(TypeInfo(TDataSetState),Ord(qry.State))]));


          if qry.Locate('COUNTRY','Brasil Antigo',[]) then
          begin
            writeln('Achei o registro');
          end
          else
            writeln('Não encontrei o registro para exclusão');

          writeln('Agora vou deletar');

          qry.Delete; // Deletando o valor
          writeln(Format('Estado: %s', [GetEnumName(TypeInfo(TDataSetState),Ord(qry.State))]));
          qry.Close;

          writeln('Delete OK');

      finally
          qry.Free;
      end;


  except

    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  readln;
end.
