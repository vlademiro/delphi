program firedac;

{
  Esse programa :

  1. cria uma conexão SEM USAR o FDManager
  2. testa se a conexão está correta.
  3. Buscar um valor
  3. alterar o valor encontrado

}

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Classes,
  U_DM in 'U_DM.pas' {DM: TDataModule};

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }



      writeln('Antes de abrir');
      DM := Tdm.Create (nil);   { Necessário criar o DM }
      DM.FDConn.Open;
      writeln('Abriu a conexao');


      try

        DM.qryEmployee.Open;
        while not DM.qryEmployee.Eof do
        begin
            writeln( DM.qryEmployee.FieldByName('first_name').Value );
            DM.qryEmployee.Next;
        end;
        writeln('OK');

      finally
          DM.qryEmployee.Free;
      end;


  except

    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
  readln;
end.
